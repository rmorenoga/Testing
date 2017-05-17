package hill;

import unalcol.descriptors.Descriptors;
import unalcol.descriptors.WriteDescriptors;
import unalcol.io.Write;
import unalcol.optimization.OptimizationFunction;
import unalcol.optimization.OptimizationGoal;

import unalcol.optimization.real.HyperCube;

import unalcol.optimization.real.mutation.GaussianMutation;
import unalcol.optimization.real.mutation.IntensityMutation;
import unalcol.optimization.real.mutation.OneFifthRule;
import unalcol.optimization.real.testbed.Schwefel;
import unalcol.search.Goal;

import unalcol.search.space.Space;
import unalcol.tracer.ConsoleTracer;
import unalcol.tracer.Tracer;
import unalcol.types.real.array.DoubleArray;
import unalcol.types.real.array.DoubleArrayPlainWrite;

public class HillTest {
		
//	public static void real (){
//		//Search Space Definition 
//		int DIM = 3;
//		double[] min = DoubleArray.create(DIM,-1);
//		double[] max = DoubleArray.create(DIM,1);
//		
//	Space<double[]> space = new HyperCube(min,max);
//	
//	//Optimization function
//	OptimizationFunction<double[]> function = new HillMaze();
//	Goal<double[]> goal = new OptimizationGoal<double[]>(function);
//	
//	
//	//Variation Definition
//	AdaptMutationIntensity adapt = new OneFifthRule(20,0.9);
//	IntensityMutation variation = new GaussianMutation(0.1,null,adapt);
//	
//	//Search Method
//	int MAXITERS = 1;
//	boolean neutral = true;
//	HillClimbing<double[]> search = new HillClimbing<double[]>(variation, neutral, MAXITERS);
//	
//	//Track Individuals and Goal Evaluations
//	SolutionDescriptors<double[]> desc = new SolutionDescriptors<double[]>();
//	Descriptors.set(Space.class,desc);
//	DoubleArrayPlainWrite write = new DoubleArrayPlainWrite(false);
//	Write.set(double[].class, write);
//	WriteDescriptors w_desc = new WriteDescriptors();
//	Write.set(Space.class, w_desc);
//	
//	//Add tracer based on descriptors set
//	ConsoleTracer tracer = new ConsoleTracer();
//	//Tracer.addTracer(goal, tracer);
//	Tracer.addTracer(search, tracer);
//	
//	Solution<double[]> solution = search.apply(space, goal);
//	
//	System.out.println(solution.quality());
//	
//	}
//	
//	
//	public static void main(String[] args) {
//		
//		real();
//		
//	}

}
