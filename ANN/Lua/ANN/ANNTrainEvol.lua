require "ANN"
require "ANNRead"
require "ANNTrain"


function ModifyAnnWeights(ann,weights)

    for i=1,#ann do
        for j=1,#ann[i] do
            for k=1,#ann[i][j] do
               ann[i][j][k] = weights[i][j][k]
            end
        end
    end        
    
end


function organizeWeights(ann,extWeights)

    local morpho = getAnnMorphology(ann)
    
    local oweights = inittableoftables(#morpho-1)
    
    local k=1
    
    for i=1,#morpho-1 do
        oweights[i] = inittableoftables(morpho[i+1])
        for j=1,morpho[i+1] do
            for p=1,morpho[i] do
                oweights[i][j][p] = extWeights[k]
                k=k+1
            end  
        end
        
    end
    
    for i=1,#oweights do
        print('6666666666666')
        for j=1,#oweights[i] do
            print(oweights[i][j])
        end
    end
    
    return oweights

end
