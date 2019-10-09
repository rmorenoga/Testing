require "Convert"


bestCPG = {
    {-0.9987173249012480,-0.0728152205351229,0.2562974185053560},
    {0.7683273543877500,0.0548849397255144,-0.8862832418911310},
    {0.6726214879899250,0.0484685392689040,-0.8672715501622820},
    {0.9998851834911800,-0.0743777590414173,0.2497744086831150},
    {-0.8947789338991730,-0.1324354976835150,-0.4796554054248260},
    {-0.9985665004505300,-0.0471089798182726,-0.8642275943025290},
    {0.7112908313705490,0.0656676826123824,-0.8875491045469390},
    {-0.5197274438512250,0.1318502106031870,-0.6900025386425110},
    {-0.5713779772456950,0.0932418545630512,-0.8619045435891820},
    {-0.6306959577259200,0.0392924153045117,-0.8688417852525270}
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


