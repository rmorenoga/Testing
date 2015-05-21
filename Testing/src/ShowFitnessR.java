import coppelia.CharWA;
import coppelia.FloatWA;
import coppelia.IntW;
import coppelia.IntWA;
import coppelia.remoteApi;


public class ShowFitnessR {

	public static void main(String[] args) {
		
		float ampli = -0.9922359744889865f;
		float offset = 0.10689492948245015f;
		float phase =  -0.6575482696047599f*(float) Math.PI;
		
		// Pack Floats into one String data signal
		FloatWA ControlParam = new FloatWA(3);
		float[] CP = new float[3];
		CP[0] = ampli;
		CP[1] = offset;
		CP[2] = phase;
		ControlParam.setArray(CP);
		CharWA strCP = new CharWA(1);
		strCP.setArray(ControlParam.getCharArrayFromArray());
		
		// Morphology Parameters
		int Numberofmodules = 8;
		int[] orientation = new int[]{0,1,0,1,0,1,0,1};
		
		// Simulation Parameters
		int MaxTime = 40;
		
		// Pack Integers into one String data signal
		IntWA NumberandOri= new IntWA(Numberofmodules+3);
		int[] NO = new int[Numberofmodules+3];
		NO[0] = Numberofmodules;
		NO[1] = MaxTime;
		NO[2] = 0;
		for (int i = 3; i < Numberofmodules + 3; i++) {
			NO[i] = orientation[i - 3];
		}
		NumberandOri.setArray(NO);
		CharWA strNO = new CharWA(1);
		strNO.setArray(NumberandOri.getCharArrayFromArray());
		
		// Maze Parameters (Already a string)
		//char[] mazeseq = new char[]{'s','l','s','r','l','b'};
		char[] mazeseq = new char[]{'b'};
		CharWA strSeq=new CharWA(1);
		strSeq.setArray(mazeseq);
		
		// Array that receives fitness from the simulator or signals a crash
		float[] rfitness = new float[2];
		
		
		// Simulator interaction start
		
		remoteApi vrep = new remoteApi(); // Create simulator control object 
		vrep.simxFinish(-1); // Close all opened connections
		
		int clientID = vrep.simxStart("127.0.0.1",19997,true,true,5000,5);
		
		if (clientID!=-1)
		{
			// Set Simulator signal values
			vrep.simxSetStringSignal(clientID, "NumberandOri",strNO, vrep.simx_opmode_oneshot_wait);
			vrep.simxSetStringSignal(clientID, "ControlParam", strCP,vrep.simx_opmode_oneshot_wait);
			vrep.simxSetStringSignal(clientID, "Maze", strSeq, vrep.simx_opmode_oneshot_wait);				
			
			// Run Scene in the simulator
			//rfitness = RunScene(vrep, clientID,"C:/Users/Rodrigo/Documents/2015-I/Tesis/V-REP/Modular/Maze/MazeBuilderTest.ttt", MaxTime);
			rfitness = RunSimulation(vrep, clientID, MaxTime);
			
			// Close connection with the simulator
			vrep.simxFinish(clientID);
			
		}
		else {
			System.out.println("Failed connecting to remote API server");	
		}
		
		System.out.println(rfitness[1]);		

	}
	
	static float[] RunSimulation(remoteApi vrep, int clientID, int MaxTime){
		
		// Create all output variables
		IntW out = new IntW(0);
		CharWA datastring = new CharWA(1);
		FloatWA out2 = new FloatWA(3);
		float[] fitnessout = new float[2];
		
		// Start Simulation
		vrep.simxStartSimulation(clientID, vrep.simx_opmode_oneshot_wait);
		
		// Setting up and waiting for finished flag
		vrep.simxGetIntegerSignal(clientID, "finished", out, vrep.simx_opmode_streaming);
		out.setValue(0);
		
		while (out.getValue() == 0) {
			if (vrep.simxGetIntegerSignal(clientID, "finished", out, vrep.simx_opmode_buffer) == vrep.simx_return_ok) {
				// We received a fitness signal and everything is ok
				// System.out.println("Retrieved Signal: "+Integer.toString(out.getValue()));
			} else {
				// We have not received the fitness message and out may contain garbage so we set it up to 0 again 
				out.setValue(0);
				// System.out.println("Retrieved Signal: "+Integer.toString(out.getValue()));
			}
		}
		
		// Stop listening to the finished signal
		vrep.simxGetIntegerSignal(clientID, "finished", out, vrep.simx_opmode_discontinue);
		
		// Stop simulation
		vrep.simxStopSimulation(clientID, vrep.simx_opmode_oneshot_wait);	
		
		// Read simulation results
		int ret = vrep.simxGetStringSignal(clientID, "Position", datastring, vrep.simx_opmode_oneshot_wait);
		if (ret != vrep.simx_return_ok) {
			System.out.println("Position Signal not received");
		}
		
		out2.initArrayFromCharArray(datastring.getArray());
		
		if (out2.getArray().length == 0) {
			// If out2 is empty the simulator is not working properly and should be restarted
			System.out.println("out2 is empty");
			fitnessout[0] = -1; // This signals that the output is not ok and the simulator should be restarted
			fitnessout[1] = 1000;
			return fitnessout;
		}
		
		fitnessout[0] = 0;
		if (out2.getArray()[0] == 0) {
			// The robot could get out of the maze do the fitness is the time it spent
			fitnessout[1] = out2.getArray()[1]*0.01f;
		} else if (out2.getArray()[1] == 0) {
			// The robot could not get out of the maze so the fitness is the distance to goal + the maximum time allowed
			fitnessout[1] = out2.getArray()[0] + (float) MaxTime*0.01f;
		}
		
		// Return the fitness of the run
		return fitnessout;
		
	}
	
	
	
	static float[] RunScene(remoteApi vrep, int clientID, String scene, int MaxTime) {

		IntW out = new IntW(0);
		CharWA datastring = new CharWA(1);
		FloatWA out2 = new FloatWA(3);
		float[] fitnessout = new float[2];

		// Load scene maze and start the simulation
		int ret = vrep.simxLoadScene(clientID, scene, 0,
				vrep.simx_opmode_oneshot_wait);
		ret = vrep.simxStartSimulation(clientID, vrep.simx_opmode_oneshot_wait);

		// Setting up and waiting for finished flag
		ret = vrep.simxGetIntegerSignal(clientID, "finished", out,
				vrep.simx_opmode_streaming);
		out.setValue(0);
		// long startTime = System.currentTimeMillis();
		while (out.getValue() == 0) {
			if (vrep.simxGetIntegerSignal(clientID, "finished", out,
					vrep.simx_opmode_buffer) == vrep.simx_return_ok) {
				// System.out.println("Retrieved Signal: "+Integer.toString(out.getValue()));
			} else {
				out.setValue(0);
				// System.out.println("Retrieved Signal: "+Integer.toString(out.getValue()));
			}
		}

		vrep.simxGetIntegerSignal(clientID, "finished", out,
				vrep.simx_opmode_discontinue);

		// Stopping simulation
		ret = vrep.simxStopSimulation(clientID, vrep.simx_opmode_oneshot_wait);
		// System.out.println(ret);

		// Reading simulation results
		ret = vrep.simxGetStringSignal(clientID, "Position", datastring,
				vrep.simx_opmode_oneshot_wait);
		if (ret != vrep.simx_return_ok) {
			System.out.println("Position Signal not received");
		}
		out2.initArrayFromCharArray(datastring.getArray());
		// System.out.println("Return = "+Float.toString(out2.getArray()[0])+" "+Float.toString(out2.getArray()[1]));

		if (out2.getArray().length == 0) {
			System.out.println("out2 is empty");
			fitnessout[0] = -1;
			fitnessout[1] = 1000;
			return fitnessout;
		}

		fitnessout[0] = 0;
		// Scaling fitness
		if (out2.getArray()[0] == 0) {
			fitnessout[1] = out2.getArray()[1];
		} else if (out2.getArray()[1] == 0) {
			fitnessout[1] = (out2.getArray()[0] * (100f / 7f)) + (float) MaxTime;
		}
		// System.out.println("Fitness = "+Float.toString(fitness[0]));

		// Closing first maze
		while (vrep.simxCloseScene(clientID, vrep.simx_opmode_oneshot_wait) != vrep.simx_return_ok) {
		}

		return fitnessout;
	}
	
	

	

}
