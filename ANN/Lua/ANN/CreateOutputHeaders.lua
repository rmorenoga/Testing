require "Convert"


bestCPG = {
    {-0.7155502813087156,-0.29110377589684067,-0.6171415188945006},
    {0.7454236857143375,0.018646686033522448,-0.6027325309633906},
    {0.8113110289179686,-0.06619553260910704,-0.646057538000772},
    {0.9998848652292658,-0.3688380360697463,-0.6720314831483988},
    {0.7578904966977824,0.03280612710868175,-0.5803714080239936},
    {-1.0,0.10204997340599609,0.39142904574077364},
    {0.8002673946380714,-0.08754860374263794,-0.6842554131085598},
    {-0.7362651993282364,0.016321951603128,-0.6075012051023805},
    {0.8046690966050312,0.007279723753718251,-0.698914203677516},
    {0.9998278006258894,-0.360450738437462,-0.6387145024496814}
}

-- Add last phaseDiff value as the negative version of the phasediff value present
for i=1,#bestCPG do
    bestCPG[i][4]= -bestCPG[i][3]
end

--for k,v in pairs(bestCPG[8]) do print(k,v) end

--Convert from [-1,1] to [0,1]

bestCPGConverted = {}

for i=1,#bestCPG do
    bestCPGConverted[i] = ConvertCPGParameterstoAnnOutputs(bestCPG[i])
end
    
--for k,v in pairs(bestCPGConverted[7]) do print(k,v) end

--Pretty print
io.write('{')
for i=1,#bestCPGConverted do
    io.write('{')
    for j=1,#bestCPGConverted[i] do
        io.write(bestCPGConverted[i][j])
        if j==#bestCPGConverted[i] then
            io.write('}')
        else
           io.write(', ')
        end
    end
    if i==#bestCPGConverted then
        io.write('}\n')
    else
        io.write(',\n')
    end
end


