package selEvol;

import java.io.File;
import java.lang.ProcessBuilder.Redirect;

import emst.evolution.haea.ModifiedHaeaStep;
import emst.evolution.json.haea.JSONProgramSettingManager;
import emst.evolution.search.multilevel.MultiLevelOptimizationSearch;
import emst.evolution.search.multithread.MultithreadOptimizationGoal;
import emst.evolution.search.selection.ModifiedElitism;
import unalcol.algorithm.iterative.ForLoopCondition;
import unalcol.descriptors.Descriptors;
import unalcol.descriptors.WriteDescriptors;
import unalcol.evolution.EAFactory;
import unalcol.evolution.haea.HaeaOperators;
import unalcol.evolution.haea.HaeaStep;
import unalcol.evolution.haea.HaeaStepDescriptors;
import unalcol.evolution.haea.SimpleHaeaOperators;
import unalcol.evolution.haea.SimpleHaeaOperatorsDescriptor;
import unalcol.evolution.haea.WriteHaeaStep;
import unalcol.io.Write;
import unalcol.optimization.OptimizationFunction;
import unalcol.optimization.OptimizationGoal;
import unalcol.optimization.real.HyperCube;
import unalcol.optimization.real.mutation.GaussianMutation;
import unalcol.optimization.real.mutation.IntensityMutation;
import unalcol.optimization.real.mutation.Mutation;
import unalcol.optimization.real.mutation.OneFifthRule;
import unalcol.optimization.real.mutation.PickComponents;
import unalcol.optimization.real.testbed.Schwefel;
import unalcol.optimization.real.xover.LinearXOver;
import unalcol.random.real.StandardGaussianGenerator;
import unalcol.search.Goal;
import unalcol.search.population.IterativePopulationSearch;
import unalcol.search.population.Population;
import unalcol.search.population.PopulationDescriptors;
import unalcol.search.population.PopulationSearch;
import unalcol.search.selection.Selection;
import unalcol.search.selection.Tournament;
import unalcol.search.solution.Solution;
import unalcol.search.space.Space;
import unalcol.search.variation.Variation;
import unalcol.tracer.ConsoleTracer;
import unalcol.tracer.FileTracer;
import unalcol.tracer.Tracer;
import unalcol.types.real.array.DoubleArray;
import unalcol.types.real.array.DoubleArrayPlainWrite;;

public class HAEAS {



	public static void main(String[] args) {


		// Search Space Definition
		int DIM = 100;
		double[] min = DoubleArray.create(DIM, -10);
		double[] max = DoubleArray.create(DIM, 10);

		Space<double[]> space = new HyperCube(min, max);
		

		// Optimization function
		OptimizationFunction<double[]> function = new SimpleOptFunction(0);
		//OptimizationFunction<double[]> function = new Schwefel();
		MultithreadOptimizationGoal<double[]> goal = new MultithreadOptimizationGoal<double[]>(function);
		goal.setMax_threads(20);
		
		// Variation Definition
		//AdaptMutationIntensity adapt = new OneFifthRule(20, 0.9);
		//IntensityMutation variation = new GaussianMutation(0.1, null, adapt);
		//PickComponents favor = new FavorFirst(7,6,true,0);
		//Mutation variation = new FFirstIntMutation(0.1,new StandardGaussianGenerator(),favor,7,6,0);
		DEXOver xover = new DEXOver(0.7,0.9,new StandardGaussianGenerator(),DIM);
		IntensityMutation variation = new GaussianMutation(0.1);

		int POPSIZE = 20;
		int MAXITERS = 100;
		Variation[] opers = new Variation[2];
		opers[0] = xover;
		opers[1] = variation;

		SimpleHaeaOperators operators = new SimpleHaeaOperators(opers);
		Selection selection = new Tournament(4, new ModifiedElitism(1.0, 0.0));
		
		ModifiedHaeaStep step = new ModifiedHaeaStep(POPSIZE, selection, operators);
		step.setJsonManager(new JSONProgramSettingManager());
		PopulationSearch haea = new IterativePopulationSearch(step, new ForLoopCondition<Population>(MAXITERS));
		
		// Tracking the goal evaluations
        WriteDescriptors write_desc = new WriteDescriptors();
        Write.set(double[].class, new DoubleArrayPlainWrite(false));
        Write.set(HaeaStep.class, new WriteHaeaStep());
        Descriptors.set(Population.class, new PopulationDescriptors());
        Descriptors.set(HaeaStep.class, new HaeaStepDescriptors());
        Descriptors.set(HaeaOperators.class, new SimpleHaeaOperatorsDescriptor());
        Write.set(Population.class, write_desc);
        Write.set(HaeaStep.class, write_desc);
        Write.set(HaeaOperators.class, write_desc);
        // Tracer
        ConsoleTracer tracer = new ConsoleTracer();
        
        Tracer.addTracer(haea, tracer);
		
		System.out.println("WorstFitness BestFitness Median Average Variance SD BestIndividual FirstOperatorRate SecondOperatorRate");
		Solution<double[]> solution = haea.solve(space, goal);

		System.out.println(solution.object());
		double[] result = solution.object();
		for(int i = 0; i < result.length; i++)
			System.out.print(" " + result[i]);
		System.out.println();

		//tracer.close();
		tracer.close();

	}
}
