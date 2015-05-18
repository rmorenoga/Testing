import coppelia.CharWA;
import coppelia.remoteApi;


public class MazeString {

	public static void main(String[] args) {
		
		char[] mazeseq = new char[]{'s','l','s','r','l','b','r','s','r','b','b','b'};
//		char[] mazeseq = new char[]{'s','l','s'};
		CharWA strNO=new CharWA(1);
		strNO.setArray(mazeseq);
		
		remoteApi vrep = new remoteApi();	
		vrep.simxFinish(-1); //Close all opened connections
		
		int clientID = vrep.simxStart("127.0.0.1",19997,true,true,5000,5);
		if (clientID!=-1)
		{
			vrep.simxSetStringSignal(clientID, "Maze", strNO, vrep.simx_opmode_oneshot_wait);				
			vrep.simxFinish(clientID);				
		}
		else {
			System.out.println("Failed connecting to remote API server");
			
		}

	}

}
