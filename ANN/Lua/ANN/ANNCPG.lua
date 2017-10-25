require "ANN"
require "ANNTrain"

math.randomseed(os.time())


annLayers = {12,20,20,6}

ann = createANN(annLayers)

inputs = {0.9,0.1,0.1,0.1,0.1,0.1,1,1,1,1,1,1}

output = propagateANN(ann,inputs)

for k,v in pairs(output) do print(k,v) end


inputs = {{0.9,0.1,0.1,0.1,0.1,0.1,0,0,0,0,0,0},{0.9,0.1,0.1,0.1,0.1,0.1,0,0.5,0,0,0,0},{0.9,0.1,0.1,0.1,0.1,0.1,0,1,0,0,0,0},{0.9,0.1,0.1,0.1,0.1,0.1,0,0,0.5,0,0,0},{0.9,0.1,0.1,0.1,0.1,0.1,0,0,1,0,0,0},{0.9,0.1,0.1,0.1,0.1,0.1,0,0,0,0.5,0,0},{0.9,0.1,0.1,0.1,0.1,0.1,0,0,0,1,0,0},{0.1,0.9,0.1,0.1,0.1,0.1,0,0,0,0,0,0},{0.1,0.9,0.1,0.1,0.1,0.1,0,0.5,0,0,0,0},{0.1,0.9,0.1,0.1,0.1,0.1,0,1,0,0,0,0},{0.1,0.9,0.1,0.1,0.1,0.1,0,0,0.5,0,0,0},{0.1,0.9,0.1,0.1,0.1,0.1,0,0,1,0,0,0},{0.1,0.9,0.1,0.1,0.1,0.1,0,0,0,0.5,0,0},{0.1,0.9,0.1,0.1,0.1,0.1,0,0,0,1,0,0},{0.1,0.1,0.1,0.9,0.1,0.1,0,0,0,0,0,0},{0.1,0.1,0.1,0.9,0.1,0.1,0,0.5,0,0,0,0},{0.1,0.1,0.1,0.9,0.1,0.1,0,1,0,0,0,0},{0.1,0.1,0.1,0.9,0.1,0.1,0,0,0.5,0,0,0},{0.1,0.1,0.1,0.9,0.1,0.1,0,0,1,0,0,0},{0.1,0.1,0.1,0.9,0.1,0.1,0,0,0,0.5,0,0},{0.1,0.1,0.1,0.9,0.1,0.1,0,0,0,1,0,0}}
outputs = {{0.75,0.5,0.65,0.65,0.65,0.65},{0.75,0.75,0.65,0.65,0.65,0.65},{0.9,1,0.65,0.65,0.65,0.65},{0.75,0.5,0.65,0.65,0.65,0.65},{0.75,0.5,0.65,0.65,0.65,0.65},{0.75,0.5,0.65,0.65,0.65,0.65},{0.75,0.5,0.65,0.65,0.65,0.65},{0.5,0.5,0.65,0.65,0.65,0.65},{0.5,0.5,0.65,0.65,0.65,0.65},{0.5,0.5,0.65,0.65,0.65,0.65},{0.75,0.5,0.65,0.65,0.65,0.65},{0.85,0.5,0.65,0.65,0.65,0.65},{0,0.5,0.65,0.65,0.65,0.65},{0.15,0.5,0.65,0.65,0.65,0.65},{0.5,0.5,0.65,0.65,0.65,0.65},{0.5,0.5,0.65,0.65,0.65,0.65},{0.5,0.5,0.65,0.65,0.65,0.65},{0.25,0.5,0.65,0.65,0.65,0.65},{0.15,0.5,0.65,0.65,0.65,0.65},{0.75,0.5,0.65,0.65,0.65,0.65},{0.85,0.5,0.65,0.65,0.65,0.65}}
params = {{0.7,0.3},{0.5,0.5},{0.1,0.9}}
print('-----------------------------')

for j=1,#inputs do
         realoutput = propagateANN(ann,inputs[j])
         for k,v in pairs(realoutput) do print(k,v) end
end

for p=1,#params do
    for i=1,1000 do
        for j=1,#inputs do

            trainANN(ann,inputs[j],outputs[j],params[p])
        end

    end
    print('-----------------------------')
    for j=1,#inputs do
         realoutput = propagateANN(ann,inputs[j])
         for k,v in pairs(realoutput) do print(k,v) end
    end 
end

print('+++++++++++++++++++++')
for j=1,#inputs do
   realoutput = propagateANN(ann,inputs[j])
   for k,v in pairs(realoutput) do print(k,v) end
end 