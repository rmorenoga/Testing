package selEvol;

import unalcol.search.solution.Solution;
import unalcol.search.variation.Variation;

public class Variation_4_m<T> extends Variation<T> {

	@SuppressWarnings("unchecked")
	public Solution<T>[] apply(Solution<T> one, Solution<T> two, Solution<T> three, Solution<T> four) {
		T[] next = apply(one.object(), two.object(), three.object(), four.object());
		Solution<T>[] s = new Solution[next.length];
		for (int i = 0; i < s.length; i++) {
			s[i] = new Solution<T>(next[i], one.tags(), false);
		}
		return s;
	}

	@SuppressWarnings("unchecked")
	public T[] apply(T one, T two, T three, T four) {
		Solution<T>[] next = apply(new Solution<T>(one), new Solution<T>(two), new Solution<T>(three),
				new Solution<T>(four));
		T[] s = (T[]) new Object[next.length];
		for (int i = 0; i < s.length; i++) {
			s[i] = next[i].object();
		}
		return s;
	}

	/**
	 * Return the genetic operator arity
	 * 
	 * @return the genetic operator arity
	 */
	@Override
	public int arity() {
		return 4;
	}

}
