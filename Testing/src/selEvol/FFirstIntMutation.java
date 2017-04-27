package selEvol;


import unalcol.optimization.real.mutation.Mutation;
import unalcol.optimization.real.mutation.PickComponents;
import unalcol.random.real.DoubleGenerator;

public class FFirstIntMutation extends Mutation{
	
	protected double sigma;
    protected DoubleGenerator g;
    protected double[] delta;
	private int numberofmessages = 5;
	private int pack = 7;
	private int numberofmodules;
	private double[] favorvector;
	private int extraparam;
	
	public FFirstIntMutation( double sigma, DoubleGenerator g, 
            PickComponents components, int numberofmessages, int pack, int extraparam){
		super(components);
		this.sigma = sigma;
		this.g = g;
		this.numberofmessages = numberofmessages;
		this.pack = pack;
		this.extraparam = extraparam;
	}

	protected double[] delta(int DIMENSION){
		int d = DIMENSION-extraparam;
		if(d%numberofmessages*pack!=0){
			System.err.println("Warning: Genotype dimension does not match the number of modules");
		}
		numberofmodules = d/(numberofmessages*pack);
		favorvector = new double[numberofmessages];
		for (int i=0;i<favorvector.length;i++){
			favorvector[i] = Math.exp(-i*0.5);
		}
        if( components != null ){
            if( delta != null && delta.length == DIMENSION ){
                for( int i=0; i<indices.length; i++){
                    delta[indices[i]]=0.0;
                }
            }else{
                delta = new double[DIMENSION];
            }
            indices = components.get(DIMENSION);
            for (int i=0;i<extraparam;i++){
            	delta[indices[i]]=sigma*g.generate();
            	System.out.println("Extra: Position= "+indices[i]);
            }
            int k = 0;
            for( int i=extraparam; i<indices.length; i++ ){
            	if (i>=numberofmodules*pack*(k+1)+extraparam){
            		k++;
            	}
                   delta[indices[i]] =  sigma*g.generate()*favorvector[k];
                   System.out.println("Position= "+indices[i]+", k = "+k+", favorv = "+favorvector[k]);
            }
        }else{
        	if( delta == null ){
        		delta = new double[DIMENSION];
        	}
            for( int i=0; i<delta.length; i++){
                   delta[i] =  sigma*g.generate();
            }
        }
        return delta;
}
	
	@Override
	public double[] apply(double[] x) {
		 double[] y = x.clone();
	        double[] z = delta(x.length);
	        for( int i=0; i<y.length; i++){
	            y[i] += z[i];
	        }
	return y;
	}
	

}
