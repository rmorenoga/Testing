function ConvertFromUnitToRange(value,maxvalue,minvalue)

	local converted = (((value)*(maxvalue-minvalue))) + minvalue

	return converted 

end

function ConvertFromRangetoUnit(value,maxvalue,minvalue)

	local converted = (value-minvalue)/(maxvalue-minvalue)

	return converted

end

--Amplitude
MAX_AMPLITUDE = 1
MIN_AMPLITUDE = -1

--Angular Frequency
MAX_ANGULAR_FREQUENCY = 1
MIN_ANGULAR_FREQUENCY = -1

--Phase 
MAX_PHASE = 1
MIN_PHASE = -1

--Offset
MAX_OFFSET = 1
MIN_OFFSET = -1

function ConvertAnnOutputstoCPGParameters(outputs,faces)

	local amplitude, offset
	local phasediff = {}

	amplitude = ConvertFromUnitToRange(outputs[1],MAX_AMPLITUDE,MIN_AMPLITUDE)
	offset = ConvertFromUnitToRange(outputs[2],MAX_OFFSET,MIN_OFFSET)

	for j=1,faces do
        phasediff[j] = ConvertFromUnitToRange(outputs[j+2],MAX_PHASE,MIN_PHASE)
    end

    return amplitude,offset,phasediff

end

function ConvertCPGParameterstoAnnInputs(amp,offset,phasediff)

	local inputs = {}

	inputs[1] = ConvertFromRangetoUnit(amp,MAX_AMPLITUDE,MIN_AMPLITUDE)
	inputs[2] = ConvertFromRangetoUnit(offset,MAX_OFFSET,MIN_OFFSET)

	for i=1,#phasediff do
		inputs[i+2] = ConvertFromRangetoUnit(phasediff[i],MAX_PHASE,MIN_PHASE)
	end

	return inputs

end

function ConvertCPGParameterstoAnnOutputs(parameters)

	local outputs = {}

	outputs[1] = ConvertFromRangetoUnit(parameters[1],MAX_AMPLITUDE,MIN_AMPLITUDE)
	outputs[2] = ConvertFromRangetoUnit(parameters[2],MAX_OFFSET,MIN_OFFSET)

    outputs[3] = ConvertFromRangetoUnit(parameters[3],MAX_PHASE,MIN_PHASE)
    outputs[4] = ConvertFromRangetoUnit(parameters[4],MAX_PHASE,MIN_PHASE)
	

	return outputs

end

