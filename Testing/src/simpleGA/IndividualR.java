package simpleGA;
/**
 * Creates and simple individual with integer encoding
 */
public class IndividualR {
	
	static int defaultGeneLength = 3;
	
	private double fitness = 0;
	
	private int[] genes = new int[defaultGeneLength];
	
	/**
	 * Generates and individual from randomly chosen integers in the range selected
	 */
	public void generateIndividual() {
        for (int i = 0; i < size(); i++) {
            int gene =  (int)(Math.random()*255)+0;//(Math.random()*range)+min
            genes[i] = gene;
        }
    }
	
	/**
	 * Sets the default gene length for the individual
	 * @param length The new lenght
	 */
	public static void setDefaultGeneLength(int length) {
        defaultGeneLength = length;
    }
	
	/**
	 * Returns the size of the individual's gene array
	 * @return The size of the individual's gene array
	 */
	public int size() {
        return genes.length;
    }
	
	public int getGene(int index){
		return genes[index];
	}
	
	/**
	 * Sets and individual field of the gene array inside the individual
	 * @param index The position of the gene in the array
	 * @param value The new value for the gene
	 */
	public void setGene(int index, int value) {
        genes[index] = value;
        fitness = 0;
    }

	public String toString() {
        String geneString = "";
        for (int i = 0; i < size(); i++) {
            geneString += getGene(i);
        }
        return geneString;
    }
}
