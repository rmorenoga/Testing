function getLayerNumber(ann)

    return #ann+1

end

function getAnnMorphology(ann)

    local morpho = {}
    
    morpho[1] = #ann[1][1]
    
    for i=1,#ann do
        morpho[i+1] = #ann[i]
    end
    
    return morpho

end


function printANN(ann)

    for i=1,#ann do
        print('-----------------------------------')
        printLayer(ann[i])
    end

end

function printLayer(layer)

    for i=1,#layer do
        printPerceptron(layer[i])
    end

end

function printPerceptron(perceptron)

    local str = ''
    
    
    for i=1,#perceptron[1] do
        str = str..perceptron[1][i]..', '
    end
    
    str = str..' - '..perceptron[2]
    
    print(str)
        

end
