package selEvol;

import unalcol.optimization.real.mutation.PickComponents;
import unalcol.random.integer.IntUniform;
import unalcol.random.real.*;

public class FavorFirst implements PickComponents{
	protected IntUniform randint;
	protected DoubleGenerator rand2;
	protected int d = 1;
	private int numberofparameters = 35;
	private int numberofmodules;
	

	
	public FavorFirst(){
		randint = new IntUniform(7);
		rand2 = new UniformGenerator(0,1);
	}
	
	public int[] get(int DIMENSION) {
		d = DIMENSION;
		double g = rand2.generate();
		numberofmodules = d/numberofparameters;
		randint = new IntUniform(7);
		int[] indices = new int[numberofmodules*5];//Number of modules times the number of categories
		int packsize = numberofmodules*7;//Size of each pack of parameters for the number of modules
		for (int i=0;i<indices.length;i++){
			indices[i]=0;
		}	
		for (int i=0;i<numberofmodules;i++){
			indices[i] = randint.generate() + (7 * i);
		}
		
		if (g<=0.8){
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
		
		

		return indices;
	}
	
	


	

	
	

}
