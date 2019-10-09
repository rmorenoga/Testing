function getInputs()

local inputs ={
--Orientation 1
{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.1,0.1,0.1,0.1,0.1},--Movement for when no sensors are triggered

{0.9,0.1,0.1,0.1,0.1,0.1,  0.9,0.9,0.9,0.9,0.9,0.9},--Movement for when all sensors are triggered

{0.9,0.1,0.1,0.1,0.1,0.1,  0.3,0.1,0.1,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.5,0.1,0.1,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.7,0.1,0.1,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.9,0.1,0.1,0.1,0.1,0.1},

{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.3,0.1,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.5,0.1,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.7,0.1,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.9,0.1,0.1,0.1,0.1},

{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.1,0.3,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.1,0.5,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.1,0.7,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.1,0.9,0.1,0.1,0.1},

{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.1,0.1,0.3,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.1,0.1,0.5,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.1,0.1,0.7,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.1,0.1,0.9,0.1,0.1},

{0.9,0.1,0.1,0.1,0.1,0.1,  0.3,0.3,0.1,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.5,0.5,0.1,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.7,0.7,0.1,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.9,0.9,0.1,0.1,0.1,0.1},

{0.9,0.1,0.1,0.1,0.1,0.1,  0.3,0.1,0.3,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.5,0.1,0.5,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.7,0.1,0.7,0.1,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.9,0.1,0.9,0.1,0.1,0.1},

{0.9,0.1,0.1,0.1,0.1,0.1,  0.3,0.1,0.1,0.3,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.5,0.1,0.1,0.5,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.7,0.1,0.1,0.7,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.9,0.1,0.1,0.9,0.1,0.1},

{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.1,0.3,0.3,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.1,0.5,0.5,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.1,0.7,0.7,0.1,0.1},
{0.9,0.1,0.1,0.1,0.1,0.1,  0.1,0.1,0.9,0.9,0.1,0.1},

--Orientation 2
{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.1,0.1,0.1,0.1,0.1}, --Movement for when no sensors are triggered

{0.1,0.9,0.1,0.1,0.1,0.1,  0.9,0.9,0.9,0.9,0.9,0.9},--Movement for when all sensors are triggered

{0.1,0.9,0.1,0.1,0.1,0.1,  0.3,0.1,0.1,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.5,0.1,0.1,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.7,0.1,0.1,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.9,0.1,0.1,0.1,0.1,0.1},

{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.3,0.1,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.5,0.1,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.7,0.1,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.9,0.1,0.1,0.1,0.1},

{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.1,0.3,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.1,0.5,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.1,0.7,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.1,0.9,0.1,0.1,0.1},

{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.1,0.1,0.3,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.1,0.1,0.5,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.1,0.1,0.7,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.1,0.1,0.9,0.1,0.1},

{0.1,0.9,0.1,0.1,0.1,0.1,  0.3,0.3,0.1,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.5,0.5,0.1,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.7,0.7,0.1,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.9,0.9,0.1,0.1,0.1,0.1},

{0.1,0.9,0.1,0.1,0.1,0.1,  0.3,0.1,0.3,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.5,0.1,0.5,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.7,0.1,0.7,0.1,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.9,0.1,0.9,0.1,0.1,0.1},

{0.1,0.9,0.1,0.1,0.1,0.1,  0.3,0.1,0.1,0.3,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.5,0.1,0.1,0.5,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.7,0.1,0.1,0.7,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.9,0.1,0.1,0.9,0.1,0.1},

{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.1,0.3,0.3,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.1,0.5,0.5,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.1,0.7,0.7,0.1,0.1},
{0.1,0.9,0.1,0.1,0.1,0.1,  0.1,0.1,0.9,0.9,0.1,0.1},

--Orientation 3
{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.1,0.1,0.1,0.1,0.1}, --Movement for when no sensors are triggered

{0.1,0.1,0.9,0.1,0.1,0.1,  0.9,0.9,0.9,0.9,0.9,0.9},--Movement for when all sensors are triggered

{0.1,0.1,0.9,0.1,0.1,0.1,  0.3,0.1,0.1,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.5,0.1,0.1,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.7,0.1,0.1,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.9,0.1,0.1,0.1,0.1,0.1},

{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.3,0.1,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.5,0.1,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.7,0.1,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.9,0.1,0.1,0.1,0.1},

{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.1,0.3,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.1,0.5,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.1,0.7,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.1,0.9,0.1,0.1,0.1},

{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.1,0.1,0.3,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.1,0.1,0.5,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.1,0.1,0.7,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.1,0.1,0.9,0.1,0.1},

{0.1,0.1,0.9,0.1,0.1,0.1,  0.3,0.3,0.1,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.5,0.5,0.1,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.7,0.7,0.1,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.9,0.9,0.1,0.1,0.1,0.1},

{0.1,0.1,0.9,0.1,0.1,0.1,  0.3,0.1,0.3,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.5,0.1,0.5,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.7,0.1,0.7,0.1,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.9,0.1,0.9,0.1,0.1,0.1},

{0.1,0.1,0.9,0.1,0.1,0.1,  0.3,0.1,0.1,0.3,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.5,0.1,0.1,0.5,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.7,0.1,0.1,0.7,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.9,0.1,0.1,0.9,0.1,0.1},

{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.1,0.3,0.3,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.1,0.5,0.5,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.1,0.7,0.7,0.1,0.1},
{0.1,0.1,0.9,0.1,0.1,0.1,  0.1,0.1,0.9,0.9,0.1,0.1},


--Orientation 4
{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.1,0.1,0.1,0.1,0.1}, --Movement for when no sensors are triggered

{0.1,0.1,0.1,0.9,0.1,0.1,  0.9,0.9,0.9,0.9,0.9,0.9},--Movement for when all sensors are triggered

{0.1,0.1,0.1,0.9,0.1,0.1,  0.3,0.1,0.1,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.5,0.1,0.1,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.7,0.1,0.1,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.9,0.1,0.1,0.1,0.1,0.1},

{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.3,0.1,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.5,0.1,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.7,0.1,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.9,0.1,0.1,0.1,0.1},

{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.1,0.3,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.1,0.5,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.1,0.7,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.1,0.9,0.1,0.1,0.1},

{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.1,0.1,0.3,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.1,0.1,0.5,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.1,0.1,0.7,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.1,0.1,0.9,0.1,0.1},

{0.1,0.1,0.1,0.9,0.1,0.1,  0.3,0.3,0.1,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.5,0.5,0.1,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.7,0.7,0.1,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.9,0.9,0.1,0.1,0.1,0.1},

{0.1,0.1,0.1,0.9,0.1,0.1,  0.3,0.1,0.3,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.5,0.1,0.5,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.7,0.1,0.7,0.1,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.9,0.1,0.9,0.1,0.1,0.1},

{0.1,0.1,0.1,0.9,0.1,0.1,  0.3,0.1,0.1,0.3,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.5,0.1,0.1,0.5,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.7,0.1,0.1,0.7,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.9,0.1,0.1,0.9,0.1,0.1},

{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.1,0.3,0.3,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.1,0.5,0.5,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.1,0.7,0.7,0.1,0.1},
{0.1,0.1,0.1,0.9,0.1,0.1,  0.1,0.1,0.9,0.9,0.1,0.1},

}


return inputs


end

function getOutputs()

local header = {0.1846520211370400,0.5196462076522560,0.0655791073737365,0.9344208926262630}

local outputs = { --Controller made from previous CPGSingle (CPGBestJEAF14S UbuntuHome 2017) results for 8 modules snake
--Orientation 1
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.37,0.39},--Movement for when no sensors are triggered

{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.33,0.32},--Movement for when all sensors are triggered

{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.35,0.34},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.34,0.31},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.39,0.37},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.36,0.32},

{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.64,0.68},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.62,0.62},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.66,0.64},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.62,0.67},

{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.45,0.33},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.25,0.34},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.3,0.45},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.32,0.28},

{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.36,0.51},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.38,0.62},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.42,0.34},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.54,0.33},

{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.52,0.45},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.31,0.29},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.64,0.75},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.29,0.54},

{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.25,0.27},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.36,0.45},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.39,0.56},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.42,0.64},

{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.64,0.52},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.53,0.48},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.42,0.67},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.31,0.23},

{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.42,0.28},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.36,0.34},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.57,0.45},
{-0.998717324901248,-0.0728152205351229,0.628148709252678,0.371851290747322,0.29,0.32},

--Orientation 2
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.32,0.41}, --Movement for when no sensors are triggered

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.38,0.56},--Movement for when all sensors are triggered

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.36,0.53},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.27,0.61},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.49,0.29},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.57,0.46},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.47,0.62},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.78,0.47},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.64,0.32},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.52,0.39},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.58,0.45},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.34,0.25},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.42,0.64},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.69,0.26},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.28,0.33},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.42,0.61},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.46,0.39},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.58,0.68},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.64,0.56},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.24,0.89},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.36,0.43},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.48,0.71},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.58,0.45},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.34,0.25},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.42,0.64},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.69,0.26},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.27,0.63},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.62,0.57},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.52,0.38},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.58,0.42},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.42,0.52},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.39,0.16},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.27,0.7},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.39,0.53},

--Orientation 3
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.28,0.34}, --Movement for when no sensors are triggered

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.42,0.25},--Movement for when all sensors are triggered

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.31,0.58},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.63,0.39},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.52,0.46},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.37,0.65},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.48,0.29},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.36,0.54},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.79,0.68},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.52,0.69},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.32,0.65},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.48,0.31},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.26,0.47},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.38,0.64},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.64,0.58},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.37,0.47},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.29,0.36},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.37,0.45},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.21,0.36},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.35,0.52},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.64,0.8},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.42,0.54},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.24,0.37},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.47,0.54},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.27,0.56},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.68,0.46},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.67,0.39},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.23,0.72},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.34,0.48},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.74,0.57},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.56,0.39},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.29,0.48},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.58,0.23},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.41,0.37},

--Orientation 4
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.28,0.4}, --Movement for when no sensors are triggered

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.46,0.67},--Movement for when all sensors are triggered

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.29,0.38},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.34,0.75},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.68,0.42},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.73,0.58},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.25,0.35},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.47,0.54},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.39,0.57},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.28,0.27},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.54,0.37},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.39,0.46},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.46,0.29},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.12,0.25},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.8,0.61},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.67,0.38},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.58,0.42},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.47,0.51},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.28,0.42},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.64,0.61},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.37,0.52},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.26,0.32},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.54,0.37},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.39,0.46},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.46,0.29},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.12,0.25},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.68,0.75},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.24,0.11},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.47,0.39},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.36,0.57},

{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.65,0.42},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.39,0.48},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.2,0.52},
{0.9349825647812311,0.28804506393334134,0.65433897353518067,0.34566102646481933,0.29,0.53},

}

for i=1,#outputs do
    for j=1,#header do
        outputs[i][j] = header[j]
    end
end
--[[local outputs = { --Basic moving controller for 8 modules snake
--Orientation 1
{0.9,0.5,0.65,0.35,0.37,0.39},--Movement for when no sensors are triggered

{0.9,0.5,0.65,0.35,0.33,0.32},--Movement for when all sensors are triggered

{0.9,0.5,0.65,0.35,0.35,0.34},
{0.9,0.5,0.65,0.35,0.34,0.31},
{0.9,0.5,0.65,0.35,0.39,0.37},
{0.9,0.5,0.65,0.35,0.36,0.32},

{0.9,0.5,0.65,0.35,0.64,0.68},
{0.9,0.5,0.65,0.35,0.62,0.62},
{0.9,0.5,0.65,0.35,0.66,0.64},
{0.9,0.5,0.65,0.35,0.62,0.67},

{0.9,0.5,0.65,0.35,0.45,0.33},
{0.9,0.5,0.65,0.35,0.25,0.34},
{0.9,0.5,0.65,0.35,0.3,0.45},
{0.9,0.5,0.65,0.35,0.32,0.28},

{0.9,0.5,0.65,0.35,0.36,0.51},
{0.9,0.5,0.65,0.35,0.38,0.62},
{0.9,0.5,0.65,0.35,0.42,0.34},
{0.9,0.5,0.65,0.35,0.54,0.33},

{0.9,0.5,0.65,0.35,0.52,0.45},
{0.9,0.5,0.65,0.35,0.31,0.29},
{0.9,0.5,0.65,0.35,0.64,0.75},
{0.9,0.5,0.65,0.35,0.29,0.54},

{0.9,0.5,0.65,0.35,0.25,0.27},
{0.9,0.5,0.65,0.35,0.36,0.45},
{0.9,0.5,0.65,0.35,0.39,0.56},
{0.9,0.5,0.65,0.35,0.42,0.64},

{0.9,0.5,0.65,0.35,0.64,0.52},
{0.9,0.5,0.65,0.35,0.53,0.48},
{0.9,0.5,0.65,0.35,0.42,0.67},
{0.9,0.5,0.65,0.35,0.31,0.23},

{0.9,0.5,0.65,0.35,0.42,0.28},
{0.9,0.5,0.65,0.35,0.36,0.34},
{0.9,0.5,0.65,0.35,0.57,0.45},
{0.9,0.5,0.65,0.35,0.29,0.32},

--Orientation 2
{0.5,0.5,0.65,0.35,0.32,0.41}, --Movement for when no sensors are triggered

{0.5,0.5,0.65,0.35,0.38,0.56},--Movement for when all sensors are triggered

{0.5,0.5,0.65,0.35,0.36,0.53},
{0.5,0.5,0.65,0.35,0.27,0.61},
{0.5,0.5,0.65,0.35,0.49,0.29},
{0.5,0.5,0.65,0.35,0.57,0.46},

{0.5,0.5,0.65,0.35,0.47,0.62},
{0.5,0.5,0.65,0.35,0.78,0.47},
{0.5,0.5,0.65,0.35,0.64,0.32},
{0.5,0.5,0.65,0.35,0.52,0.39},

{0.5,0.5,0.65,0.35,0.58,0.45},
{0.5,0.5,0.65,0.35,0.34,0.25},
{0.5,0.5,0.65,0.35,0.42,0.64},
{0.5,0.5,0.65,0.35,0.69,0.26},

{0.5,0.5,0.65,0.35,0.28,0.33},
{0.5,0.5,0.65,0.35,0.42,0.61},
{0.5,0.5,0.65,0.35,0.46,0.39},
{0.5,0.5,0.65,0.35,0.58,0.68},

{0.5,0.5,0.65,0.35,0.64,0.56},
{0.5,0.5,0.65,0.35,0.24,0.89},
{0.5,0.5,0.65,0.35,0.36,0.43},
{0.5,0.5,0.65,0.35,0.48,0.71},

{0.5,0.5,0.65,0.35,0.58,0.45},
{0.5,0.5,0.65,0.35,0.34,0.25},
{0.5,0.5,0.65,0.35,0.42,0.64},
{0.5,0.5,0.65,0.35,0.69,0.26},

{0.5,0.5,0.65,0.35,0.27,0.63},
{0.5,0.5,0.65,0.35,0.62,0.57},
{0.5,0.5,0.65,0.35,0.52,0.38},
{0.5,0.5,0.65,0.35,0.58,0.42},

{0.5,0.5,0.65,0.35,0.42,0.52},
{0.5,0.5,0.65,0.35,0.39,0.16},
{0.5,0.5,0.65,0.35,0.27,0.7},
{0.5,0.5,0.65,0.35,0.39,0.53},

--Orientation 3
{0.1,0.5,0.65,0.35,0.28,0.34}, --Movement for when no sensors are triggered

{0.1,0.5,0.65,0.35,0.42,0.25},--Movement for when all sensors are triggered

{0.1,0.5,0.65,0.35,0.31,0.58},
{0.1,0.5,0.65,0.35,0.63,0.39},
{0.1,0.5,0.65,0.35,0.52,0.46},
{0.1,0.5,0.65,0.35,0.37,0.65},

{0.1,0.5,0.65,0.35,0.48,0.29},
{0.1,0.5,0.65,0.35,0.36,0.54},
{0.1,0.5,0.65,0.35,0.79,0.68},
{0.1,0.5,0.65,0.35,0.52,0.69},

{0.1,0.5,0.65,0.35,0.32,0.65},
{0.1,0.5,0.65,0.35,0.48,0.31},
{0.1,0.5,0.65,0.35,0.26,0.47},
{0.1,0.5,0.65,0.35,0.38,0.64},

{0.1,0.5,0.65,0.35,0.64,0.58},
{0.1,0.5,0.65,0.35,0.37,0.47},
{0.1,0.5,0.65,0.35,0.29,0.36},
{0.1,0.5,0.65,0.35,0.37,0.45},

{0.1,0.5,0.65,0.35,0.21,0.36},
{0.1,0.5,0.65,0.35,0.35,0.52},
{0.1,0.5,0.65,0.35,0.64,0.8},
{0.1,0.5,0.65,0.35,0.42,0.54},

{0.1,0.5,0.65,0.35,0.24,0.37},
{0.1,0.5,0.65,0.35,0.47,0.54},
{0.1,0.5,0.65,0.35,0.27,0.56},
{0.1,0.5,0.65,0.35,0.68,0.46},

{0.1,0.5,0.65,0.35,0.67,0.39},
{0.1,0.5,0.65,0.35,0.23,0.72},
{0.1,0.5,0.65,0.35,0.34,0.48},
{0.1,0.5,0.65,0.35,0.74,0.57},

{0.1,0.5,0.65,0.35,0.56,0.39},
{0.1,0.5,0.65,0.35,0.29,0.48},
{0.1,0.5,0.65,0.35,0.58,0.23},
{0.1,0.5,0.65,0.35,0.41,0.37},

--Orientation 4
{0.5,0.5,0.65,0.35,0.28,0.4}, --Movement for when no sensors are triggered

{0.5,0.5,0.65,0.35,0.46,0.67},--Movement for when all sensors are triggered

{0.5,0.5,0.65,0.35,0.29,0.38},
{0.5,0.5,0.65,0.35,0.34,0.75},
{0.5,0.5,0.65,0.35,0.68,0.42},
{0.5,0.5,0.65,0.35,0.73,0.58},

{0.5,0.5,0.65,0.35,0.25,0.35},
{0.5,0.5,0.65,0.35,0.47,0.54},
{0.5,0.5,0.65,0.35,0.39,0.57},
{0.5,0.5,0.65,0.35,0.28,0.27},

{0.5,0.5,0.65,0.35,0.54,0.37},
{0.5,0.5,0.65,0.35,0.39,0.46},
{0.5,0.5,0.65,0.35,0.46,0.29},
{0.5,0.5,0.65,0.35,0.12,0.25},

{0.5,0.5,0.65,0.35,0.8,0.61},
{0.5,0.5,0.65,0.35,0.67,0.38},
{0.5,0.5,0.65,0.35,0.58,0.42},
{0.5,0.5,0.65,0.35,0.47,0.51},

{0.5,0.5,0.65,0.35,0.28,0.42},
{0.5,0.5,0.65,0.35,0.64,0.61},
{0.5,0.5,0.65,0.35,0.37,0.52},
{0.5,0.5,0.65,0.35,0.26,0.32},

{0.5,0.5,0.65,0.35,0.54,0.37},
{0.5,0.5,0.65,0.35,0.39,0.46},
{0.5,0.5,0.65,0.35,0.46,0.29},
{0.5,0.5,0.65,0.35,0.12,0.25},

{0.5,0.5,0.65,0.35,0.68,0.75},
{0.5,0.5,0.65,0.35,0.24,0.11},
{0.5,0.5,0.65,0.35,0.47,0.39},
{0.5,0.5,0.65,0.35,0.36,0.57},

{0.5,0.5,0.65,0.35,0.65,0.42},
{0.5,0.5,0.65,0.35,0.39,0.48},
{0.5,0.5,0.65,0.35,0.2,0.52},
{0.5,0.5,0.65,0.35,0.29,0.53},

}
]]


--[[local outputs = { --Best manual performing controller for 8 modules snake
--Orientation 1
{0.9,0.5,0.65,0.35,0.37,0.39},--Movement for when no sensors are triggered

{0.9,0.5,0.65,0.35,0.33,0.32},--Movement for when all sensors are triggered

{0.9,0.6,0.65,0.35,0.35,0.34},
{0.9,0.7,0.65,0.35,0.34,0.31},
{0.9,0.8,0.65,0.35,0.39,0.37},
{0.9,0.9,0.65,0.35,0.36,0.32},

{0.9,0.5,0.65,0.35,0.64,0.68},
{0.9,0.5,0.65,0.35,0.62,0.62},
{0.9,0.5,0.65,0.35,0.66,0.64},
{0.9,0.5,0.65,0.35,0.62,0.67},

{0.9,0.5,0.65,0.35,0.45,0.33},
{0.9,0.5,0.65,0.35,0.25,0.34},
{0.9,0.5,0.65,0.35,0.3,0.45},
{0.9,0.5,0.65,0.35,0.32,0.28},

{0.9,0.5,0.65,0.35,0.36,0.51},
{0.9,0.5,0.65,0.35,0.38,0.62},
{0.9,0.5,0.65,0.35,0.42,0.34},
{0.9,0.5,0.65,0.35,0.54,0.33},

{0.9,0.5,0.65,0.35,0.52,0.45},
{0.9,0.5,0.65,0.35,0.31,0.29},
{0.9,0.5,0.65,0.35,0.64,0.75},
{0.9,0.5,0.65,0.35,0.29,0.54},

{0.9,0.5,0.65,0.35,0.25,0.27},
{0.9,0.5,0.65,0.35,0.36,0.45},
{0.9,0.5,0.65,0.35,0.39,0.56},
{0.9,0.5,0.65,0.35,0.42,0.64},

{0.9,0.5,0.65,0.35,0.64,0.52},
{0.9,0.5,0.65,0.35,0.53,0.48},
{0.9,0.5,0.65,0.35,0.42,0.67},
{0.9,0.5,0.65,0.35,0.31,0.23},

{0.9,0.5,0.65,0.35,0.42,0.28},
{0.9,0.5,0.65,0.35,0.36,0.34},
{0.9,0.5,0.65,0.35,0.57,0.45},
{0.9,0.5,0.65,0.35,0.29,0.32},

--Orientation 2
{0.5,0.5,0.65,0.35,0.32,0.41}, --Movement for when no sensors are triggered

{0.5,0.5,0.65,0.35,0.38,0.56},--Movement for when all sensors are triggered

{0.5,0.5,0.65,0.35,0.36,0.53},
{0.5,0.5,0.65,0.35,0.27,0.61},
{0.5,0.5,0.65,0.35,0.49,0.29},
{0.5,0.5,0.65,0.35,0.57,0.46},

{0.5,0.5,0.65,0.35,0.47,0.62},
{0.5,0.5,0.65,0.35,0.78,0.47},
{0.5,0.5,0.65,0.35,0.64,0.32},
{0.5,0.5,0.65,0.35,0.52,0.39},

{0.5,0.5,0.65,0.35,0.58,0.45},
{0.51,0.6,0.65,0.35,0.34,0.25},
{0.53,0.7,0.65,0.35,0.42,0.64},
{0.55,0.75,0.65,0.35,0.69,0.26},

{0.5,0.5,0.65,0.35,0.28,0.33},
{0.49,0.4,0.65,0.35,0.42,0.61},
{0.47,0.3,0.65,0.35,0.46,0.39},
{0.45,0.25,0.65,0.35,0.58,0.68},

{0.5,0.5,0.65,0.35,0.64,0.56},
{0.49,0.4,0.65,0.35,0.24,0.89},
{0.47,0.3,0.65,0.35,0.36,0.43},
{0.45,0.25,0.65,0.35,0.48,0.71},

{0.5,0.5,0.65,0.35,0.58,0.45},
{0.51,0.6,0.65,0.35,0.34,0.25},
{0.53,0.7,0.65,0.35,0.42,0.64},
{0.55,0.75,0.65,0.35,0.69,0.26},

{0.5,0.5,0.65,0.35,0.27,0.63},
{0.5,0.5,0.65,0.35,0.62,0.57},
{0.5,0.5,0.65,0.35,0.52,0.38},
{0.5,0.5,0.65,0.35,0.58,0.42},

{0.5,0.5,0.65,0.35,0.42,0.52},
{0.5,0.5,0.65,0.35,0.39,0.16},
{0.5,0.5,0.65,0.35,0.27,0.7},
{0.5,0.5,0.65,0.35,0.39,0.53},

--Orientation 3
{0.1,0.5,0.65,0.35,0.28,0.34}, --Movement for when no sensors are triggered

{0.1,0.5,0.65,0.35,0.42,0.25},--Movement for when all sensors are triggered

{0.2,0.4,0.65,0.35,0.31,0.58},
{0.3,0.3,0.65,0.35,0.63,0.39},
{0.3,0.2,0.65,0.35,0.52,0.46},
{0.3,0.1,0.65,0.35,0.37,0.65},

{0.1,0.5,0.65,0.35,0.48,0.29},
{0.1,0.5,0.65,0.35,0.36,0.54},
{0.1,0.5,0.65,0.35,0.79,0.68},
{0.1,0.5,0.65,0.35,0.52,0.69},

{0.1,0.5,0.65,0.35,0.32,0.65},
{0.1,0.5,0.65,0.35,0.48,0.31},
{0.1,0.5,0.65,0.35,0.26,0.47},
{0.1,0.5,0.65,0.35,0.38,0.64},

{0.1,0.5,0.65,0.35,0.64,0.58},
{0.1,0.5,0.65,0.35,0.37,0.47},
{0.1,0.5,0.65,0.35,0.29,0.36},
{0.1,0.5,0.65,0.35,0.37,0.45},

{0.1,0.5,0.65,0.35,0.21,0.36},
{0.1,0.5,0.65,0.35,0.35,0.52},
{0.1,0.5,0.65,0.35,0.64,0.8},
{0.1,0.5,0.65,0.35,0.42,0.54},

{0.1,0.5,0.65,0.35,0.24,0.37},
{0.1,0.5,0.65,0.35,0.47,0.54},
{0.1,0.5,0.65,0.35,0.27,0.56},
{0.1,0.5,0.65,0.35,0.68,0.46},

{0.1,0.5,0.65,0.35,0.67,0.39},
{0.1,0.5,0.65,0.35,0.23,0.72},
{0.1,0.5,0.65,0.35,0.34,0.48},
{0.1,0.5,0.65,0.35,0.74,0.57},

{0.1,0.5,0.65,0.35,0.56,0.39},
{0.1,0.5,0.65,0.35,0.29,0.48},
{0.1,0.5,0.65,0.35,0.58,0.23},
{0.1,0.5,0.65,0.35,0.41,0.37},

--Orientation 4
{0.5,0.5,0.65,0.35,0.28,0.4}, --Movement for when no sensors are triggered

{0.5,0.5,0.65,0.35,0.46,0.67},--Movement for when all sensors are triggered

{0.5,0.5,0.65,0.35,0.29,0.38},
{0.5,0.5,0.65,0.35,0.34,0.75},
{0.5,0.5,0.65,0.35,0.68,0.42},
{0.5,0.5,0.65,0.35,0.73,0.58},

{0.5,0.5,0.65,0.35,0.25,0.35},
{0.5,0.5,0.65,0.35,0.47,0.54},
{0.5,0.5,0.65,0.35,0.39,0.57},
{0.5,0.5,0.65,0.35,0.28,0.27},

{0.5,0.5,0.65,0.35,0.54,0.37},
{0.49,0.4,0.65,0.35,0.39,0.46},
{0.47,0.3,0.65,0.35,0.46,0.29},
{0.45,0.25,0.65,0.35,0.12,0.25},

{0.5,0.5,0.65,0.35,0.8,0.61},
{0.51,0.6,0.65,0.35,0.67,0.38},
{0.53,0.7,0.65,0.35,0.58,0.42},
{0.55,0.75,0.65,0.35,0.47,0.51},

{0.5,0.5,0.65,0.35,0.28,0.42},
{0.51,0.6,0.65,0.35,0.64,0.61},
{0.53,0.7,0.65,0.35,0.37,0.52},
{0.55,0.75,0.65,0.35,0.26,0.32},

{0.5,0.5,0.65,0.35,0.54,0.37},
{0.49,0.4,0.65,0.35,0.39,0.46},
{0.47,0.3,0.65,0.35,0.46,0.29},
{0.45,0.25,0.65,0.35,0.12,0.25},

{0.5,0.5,0.65,0.35,0.68,0.75},
{0.5,0.5,0.65,0.35,0.24,0.11},
{0.5,0.5,0.65,0.35,0.47,0.39},
{0.5,0.5,0.65,0.35,0.36,0.57},

{0.5,0.5,0.65,0.35,0.65,0.42},
{0.5,0.5,0.65,0.35,0.39,0.48},
{0.5,0.5,0.65,0.35,0.2,0.52},
{0.5,0.5,0.65,0.35,0.29,0.53},

}
]]

return outputs


end
