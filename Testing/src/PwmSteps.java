
public class PwmSteps {
	static float sal = 0;
    static int stepflag = 0;
	static float previoussal = 0;
	static float currentstep = 0;
    static int steps = 5;
	static float dist = 0;
	static float onestep = 0;
	
	
	public static void main(String[] args) {
	    
		
		for (int i = 0; i<100; i++){
			sal = (float)Math.sin(i*0.5);
			stepflag = 0;
			for (int j = 0; j<steps; j++){
				updatePWM();
			}		
		}
		
		
		
		

	}
	
	static void updatePWM(){
		  
		  int pwm = 0;
		  
		  
		  if(stepflag == 0){
		    dist = sal-previoussal;
		    //System.out.println("sal");
		    //System.out.println(sal);
		    onestep = dist/steps;
		    //System.out.println("previous");
		    //System.out.println(previoussal);
		    //System.out.println("dist");
		    //System.out.println(dist);
		    //System.out.println("onestep");
		    //System.out.println(onestep);
		    currentstep = previoussal; //Drifting? currentstep = currentstep +(onestep*(stepflag+1));
		    //System.out.println("currentstep");
		    //System.out.println(currentstep);
		    //System.out.println("stepflag");
		    //System.out.println(stepflag);
		    stepflag = stepflag + 1;
		    
		    previoussal = sal;      
		    
		    pwm = 1500+(int)(currentstep*600);
		    System.out.println(pwm);   
		  } else if(stepflag <= steps-1){
		     currentstep = currentstep +(onestep);
		     //System.out.println("currentstep");
			 //System.out.println(currentstep);
			 
			 //System.out.println("stepflag");
			 //System.out.println(stepflag);
			 stepflag = stepflag + 1; 
		     //Serial.println(currentstep);
		     
		     pwm = 1500+(int)(currentstep*600);
		     System.out.println(pwm); ;      
		  }
		    
		    
		}

}
