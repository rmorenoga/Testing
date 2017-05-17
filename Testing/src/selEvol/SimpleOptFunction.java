package selEvol;

import unalcol.optimization.OptimizationFunction;

public class SimpleOptFunction  extends OptimizationFunction<double[]>  {
	
	private double bias;
	
	public SimpleOptFunction(double bias){
		this.bias = bias;
	}
	
	public Double apply(double[] x) {
		double fitness = 10000;
		double sum = bias;
		for (int i = 0;i<x.length;i++){
			sum  = sum + x[i]*x[i];
		}
		fitness = sum;
		return fitness;

	}
	

}
