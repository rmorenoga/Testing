package selEvol;

import unalcol.optimization.real.mutation.PickComponents;
import unalcol.types.collection.vector.Vector;

public class FavorTest {

	public static void main(String[] args) {
		PickComponents test = new FavorFirst();
		int[] indices = test.get(210);
//		int[] indices = new int[20];
//		for (int i: indices){
//			indices[i] = 0;
//		}
		System.out.println("Number of modules = "+indices.length/5);
		System.out.println("Indices chosen");
		for (int i=0;i<indices.length;i++){
			System.out.print(indices[i]+" "+(i*7) + "-" + (i*7+6)+"\n");
		}
			
		double[] x = new double[140];
		double[] y = new double[140];
		for (int i=0;i<x.length;i++){
			x[i]=i;
			y[i]=y.length-i+1;
		}
		
		FavorXOver test2 = new FavorXOver();
		
		System.out.println("Position "+test2.pos(x.length, y.length));
		
		Vector<double[]> v = test2.apply(x, y);
		
		double[] x1 = v.get(0);
		double[] y1 = v.get(1);
		
		for (int i=0;i<x1.length;i++){
			System.out.println(x1[i]+" "+y1[i]);
		}
	
		
		
		
		
		
	}

}
