require "ANNinputs"

outputs = getOutputs()

for i=1,#outputs do
      for j=1,#outputs[i] do
        io.write(outputs[i][j].. ',') 
      end
      print()
end
