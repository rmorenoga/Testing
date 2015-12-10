package randomT;

import java.util.ArrayList;
import java.util.Collections;

import unalcol.random.integer.IntUniform;


public class RandomString {
	
	public static void main(String[] args) {
		
		long startTime = System.currentTimeMillis();
		
		char[][] subenv = new char[][]{
				{'s','l','s'},
				{'s','r','s'},
				{'b'}
		};
		
		IntUniform r = new IntUniform(3);
		
		//int out  = r.next();
			
		int[] out = r.generate(3);
		
		// Brute Force
//		while(out[1]==out[0])
//		{
//			out[1] = r.next();
//		}
//		while(out[2]==out[0]||out[2]==out[1])
//		{
//			out[2] = r.next();
//		}
		
		// Brute Force 2
		while(out[1]==out[0])
		{
			out[1] = r.next();
		}
		out[2] = 5-((out[0]+1)+(out[1]+1));
		
		// Shuffle
//		 ArrayList<Integer> list = new ArrayList<Integer>();
//		 for (int i=0; i<3; i++) {
//	            list.add(new Integer(i));
//	        }
//		 Collections.shuffle(list);
//		 for (int i=0; i<3; i++) {
//	            out[i]=list.get(i);
//	        }
		
		
		System.out.println(out[0]+" "+out[1]+" "+out[2]);
		
		for (int i = 0;i<subenv[out[0]].length;i++)
		{
			System.out.print(subenv[out[0]][i]);
		}
		System.out.println();
		for (int i = 0;i<subenv[out[1]].length;i++)
		{
			System.out.print(subenv[out[1]][i]);
		}
		System.out.println();
		for (int i = 0;i<subenv[out[2]].length;i++)
		{
			System.out.print(subenv[out[2]][i]);
		}
		System.out.println();
		
		//System.out.println(subenv[out[0]]+" "+subenv[out[1]]+" "+subenv[out[2]]);
		
		
		long stopTime = System.currentTimeMillis();
		long elapsedTime = stopTime - startTime;
		System.out.println(elapsedTime);
		
	
	}

}
