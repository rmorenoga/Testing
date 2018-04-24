require "ANNBias"
--require "ANNTrain"
require "ANNBiasRead"
require "ANNBiasEvol"

math.randomseed(os.time())


annLayers = {12,12,4}

ann = createANN(annLayers)

printWeightListformANN(ann)

inputs = {0.1,0.2}

outputs = propagateANN(ann,inputs)

for k,v in pairs(outputs) do print(k,v) end 

morpho = getAnnMorphology(ann)

for k,v in pairs(morpho) do print(k,v) end

printANN(ann)

printWeightListformANN(ann)

annLayers = {2,2,2}

other = {1.1,1.2,1.3,1.4,2.5,2.6,1.7,1.8,2.9,2.11,2.12,2.13}

ann = createANNfromWeightsList(annLayers,other)

printANN(ann)

outputs = propagateANN(ann,inputs)

printWeightListformANN(ann)

morpho = getAnnMorphology(ann)

for k,v in pairs(morpho) do print(k,v) end



--printANN(ann)

--weights = getANNWeights(ann)

--weights[1][2][3] = 5

--ModifyAnnWeights(ann,weights)

--weightList = getWeightListfromANN(ann)

--print(#weightList)

--

--printANN(ann)

--


--morpho = getAnnMorphology(ann)

--extWeights ={}

--for i=1,50 do
--    extWeights[i] = 0.5
--end

--weightList = getWeightListfromANN(ann)

--ann2 = createANNfromWeightsList(morpho,weightList)

--printANN(ann2)

--weightList = getWeightListfromANN(ann2)

--for k,v in pairs(weightList) do print(k,v) end

--print('1111111111111111111111111111111111')

--[[for i=1,#oweights do
        for j=1,#oweights[i] do
            local str = ""
            for k=1,i do
                str = str.."    "
            end
            for k=1,#oweights[i][j] do
                str = str..oweights[i][j][k]..", "
            end
            print(str)
        end
    end ]]       



--[[for k,v in pairs(morpho) do print(k,v) end

inputs = {0.2,0.8,0.33}

output = propagateANN(ann2,inputs)

for k,v in pairs(output) do print(k,v) end


print('&&&&&&&&&&&&&&&&&&&&&&&&&')



function modifytable(table1)
    
    table1[1] = 11
    
end

table2 = {1,5,6,9}

modifytable(table2)

for k,v in pairs(table2) do print(k,v) end

annLayers = {2,3,4,1}

ann = createANN(annLayers)

inputs = {1,0}

output = propagateANN(ann,inputs)

for k,v in pairs(output) do print(k,v) end

inputs = {{0,0},{0,1},{1,0},{1,1}}
outputs = {{1},{0},{0},{1}}
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
end]]
  

