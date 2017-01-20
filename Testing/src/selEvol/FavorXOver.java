package selEvol;

import unalcol.optimization.real.xover.SimpleXOver;
import unalcol.random.integer.IntUniform;

public class FavorXOver extends SimpleXOver{
	
	private int numberofparameters = 35;
	private int numberofmodules;
	
	public FavorXOver(){
		g = new IntUniform(1,5);
	}

	public int pos( int DIM1, int DIM2 ){
		g = new IntUniform(1,5);
		numberofmodules = DIM1/numberofparameters;
		int position = g.generate()*7*numberofmodules;
		return position;
	}
}
