package selEvol;

import unalcol.optimization.real.mutation.PickComponents;
import unalcol.random.integer.IntUniform;
import unalcol.random.real.*;

public class FavorFirst implements PickComponents{
	protected IntUniform randint;
	protected DoubleGenerator rand2;
	protected int d = 1;
	private int numberofparameters = 35;
	private int numberofmessages = 5;
	private int pack = 7;
	private int numberofmodules;
	

	
	public FavorFirst(){
		randint = new IntUniform(7);
		rand2 = new UniformGenerator(0,1);
	}
	
	public int[] get(int DIMENSION) {
		d = DIMENSION;
		numberofmodules = d/numberofparameters;
		int[] indices = new int[d];//number of messages 5
		int packsize = numberofmodules*pack;//Size of each pack of parameters for the number of modules
		
		for (int i=0;i<numberofmessages; i++){
			for(int j=0; j<numberofmodules; j++){
				indices[(i*numberofmodules*pack)+(j*pack)] = i+(j*35);
				indices[(i*numberofmodules*pack)+(j*pack)+1] = i+5+(j*35);
				indices[(i*numberofmodules*pack)+(j*pack)+2] = (2*numberofmessages)+(4*i)+(j*35);
				indices[(i*numberofmodules*pack)+(j*pack)+3] = (2*numberofmessages)+(4*i)+(j*35)+1;
				indices[(i*numberofmodules*pack)+(j*pack)+4] = (2*numberofmessages)+(4*i)+(j*35)+2;
				indices[(i*numberofmodules*pack)+(j*pack)+5] = (2*numberofmessages)+(4*i)+(j*35)+3;
				indices[(i*numberofmodules*pack)+(j*pack)+6] = i+(6*numberofmessages)+(j*35);
			}
		}
		/*	indices[0] = 0;
			indices[1] = 5;
			indices[2] = 10;
			indices[3] = 11;
			indices[4] = 12;
			indices[5] = 13;
			indices[6] = 30;
			
			indices[7] = 0+35;
			indices[8] = 5+35;
			indices[9] = 10+35;
			indices[10] = 11+35;
			indices[11] = 12+35;
			indices[12] = 13+35;
			indices[13] = 30+35;
			
			indices[14] = 1;
			indices[15] = 6;
			indices[16] = 11;
			indices[17] = 12;
			indices[18] = 13;
			indices[19] = 14;
			indices[20] = 31;
			
			indices[21] = 1+35;
			indices[22] = 6+35;
			indices[23] = 11+35;
			indices[24] = 12+35;
			indices[25] = 13+35;
			indices[26] = 14+35;
			indices[27] = 31+35;*/
			
		//}
		
/*		if (g<=0.8){
			for (int i=0;i<numberofmodules;i++){
				indices[i+numberofmodules] = randint.generate() + (7 * i) + packsize;
			}
		}
		if (g<=0.6){
			for (int i=0;i<numberofmodules;i++){
				indices[i+(numberofmodules*2)] = randint.generate() + (7 * i) + (packsize*2);
			}
		}
		if (g<=0.4){
			for (int i=0;i<numberofmodules;i++){
				indices[i+(numberofmodules*3)] = randint.generate() + (7 * i) + (packsize*3);
			}
		}
		if (g<=0.2){
			for (int i=0;i<numberofmodules;i++){
				indices[i+(numberofmodules*4)] = randint.generate() + (7 * i) + (packsize*4);
			}
		}
		*/
		

		return indices;
	}
	
	

	/*public int[] get(int DIMENSION) {
		d = DIMENSION;
		numberofmodules = d/numberofparameters;
		int[] indices = new int[d]; 
		int packsize = numberofmodules*pack;//Size of each pack of parameters times the number of modules
		
		for (int i=0;i<indices.length;i++){
			indices[i]=0;
		}	
		
		for (int j = 0; j < numberofmessages;j++ ){			
			for (int i = 0; i < numberofmodules; i++) {
				indices[i+(numberofmodules*j)] = (pack * i) + (packsize*j);
			}
		}
		
		
		return indices;
	}*/

	

	
	

}
