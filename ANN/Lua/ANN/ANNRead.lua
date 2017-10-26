require "ANN"
require "ANNTrain"

function getLayerNumber(ann)

    return #ann

end

function getAnnMorphology(ann)

    local morpho = {}
    
    morpho[1] = #ann[1][1]
    
    for i=1,#ann do
        morpho[i+1] = #ann[i]
    end
    
    return morpho

end

function getANNWeights(ann)

    local annweights = inittableoftables(#ann)
    
    for i=1,#ann do
        annweights[i] = getLayerWeights(ann[i])
    end
    
    return annweights

end

function getLayerWeights(layer)   

    local layerweights = {}
    
    for i=1,#layer do
        table.insert(layerweights,layer[i])
    end
    
    return layerweights

end     


function printANN(ann)

    for i=1,#ann do
        for j=1,#ann[i] do
            local str = ""
            for k=1,i do
                str = str.."    "
            end
            for k=1,#ann[i][j] do
                str = str..ann[i][j][k]..", "
            end
            print(str)
        end
    end        

end