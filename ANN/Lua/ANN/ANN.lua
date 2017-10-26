function createANN(layersizes)
    local ann = {}
    
    for i=2,#layersizes do
        local layer = createLayer(layersizes[i-1],layersizes[i])
        table.insert(ann,layer)
    end

    return ann       
    
end

function createLayer(inputs, outputs)
    local layer = {}
    
    for i=1,outputs do
        local perceptron = createPerceptron(inputs)
        table.insert(layer,perceptron)
    end
    
    return layer
    
end
        
function createPerceptron(size)

    local weights = {}
    
    for i=1,size do 
        local weight = 6*math.random()-3
        table.insert(weights,weight)
    end
   
    return weights
    
end

function propagateANN(ann,inputs)

    local outputs = inputs
    
    for i=1,#ann do
        outputs = propagateLayer(ann[i],outputs)
    end
    
    return outputs
    
end

function propagateLayer(layer,inputs)

    local outputs = {}
    
    for i=1,#layer do
        local output = activate(calculateweightedsum(layer[i],inputs))
        table.insert(outputs,output)
    end
    
    return outputs
    
end
      
function activate(x)

    return sigmoid(x)
    
end  

function sigmoid(x)
   
   return 1/(1+math.exp(-x))
   
end   

function calculateweightedsum(perceptron,inputs)

   local sum = 0
   
   for i=1,#perceptron do
        sum = sum + (inputs[i]*perceptron[i])
   end
   
   return sum

end
   
function derivate(x)

    return sigmoidderivate(x)

end

function sigmoidderivate(x)
    
    local value  = sigmoid(x)
    return value*(1-value)
    
end    
     
        
         