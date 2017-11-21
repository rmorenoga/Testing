require "ANNBias"
require "ANNBiasTrain"
require "ANNBiasEvol"
require "ANNinputs"

math.randomseed(os.time())

--annLayers = {2,5,1}
--annLayers = {19,20,6}
annLayers = {12,12,6}

ann = createANN(annLayers)

--weightList = getWeightListfromANN(ann)
--print(#weightList)
--for k,v in pairs(weightList) do print(k,v) end

--inputs = {0.9,0.1,0.1,0.1,0.1,0.1,1,1,1,1,1,1,1,0.8,0.5,0.65,0.65,0.65,0.65}

--output = propagateANN(ann,inputs)

--for k,v in pairs(output) do print(k,v) end


inputs = getInputs()
outputs = getOutputs()

--inputs = {{0,0},{0,1},{1,0},{1,1}}
--outputs = {{1},{0},{0},{1}}



params = {{0.7,0.3},{0.5,0.5},{0.1,0.9}}
--print('-----------------------------')

for j=1,#inputs do
         realoutput = propagateANN(ann,inputs[j])
         --for k,v in pairs(realoutput) do print(k,v) end
end

for p=1,#params do
    for i=1,1000 do
        for j=1,#inputs do

            trainANN(ann,inputs[j],outputs[j],params[p])
        end

    end
    --print('-----------------------------')
    for j=1,#inputs do
         realoutput = propagateANN(ann,inputs[j])
         --for k,v in pairs(realoutput) do print(k,v) end
    end 
end

print('+++++++++++++++++++++')


for j=1,#inputs do
   realoutput = propagateANN(ann,inputs[j])
   --for k,v in pairs(realoutput) do print(k,v) end
end 

printWeightListformANN(ann)

