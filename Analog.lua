--[[
    ___                      ___           ___                       ___           ___     
   /  /\                    /__/\         /  /\          ___        /  /\         /  /\    
  /  /:/      ___          |  |::\       /  /:/_        /  /\      /  /:/_       /  /::\   
 /__/::\     /  /\         |  |:|:\     /  /:/ /\      /  /:/     /  /:/ /\     /  /:/\:\  
 \__\/\:\   /__/::\      __|__|:|\:\   /  /:/ /::\    /  /:/     /  /:/ /:/_   /  /:/~/:/  
    \  \:\  \__\/\:\__  /__/::::| \:\ /__/:/ /:/\:\  /  /::\    /__/:/ /:/ /\ /__/:/ /:/___
     \__\:\    \  \:\/\ \  \:\~~\__\/ \  \:\/:/~/:/ /__/:/\:\   \  \:\/:/ /:/ \  \:\/:::::/
     /  /:/     \__\::/  \  \:\        \  \::/ /:/  \__\/  \:\   \  \::/ /:/   \  \::/~~~~ 
    /__/:/      /__/:/    \  \:\        \__\/ /:/        \  \:\   \  \:\/:/     \  \:\     
    \__\/       \__\/      \  \:\         /__/:/          \__\/    \  \::/       \  \:\    
                            \__\/         \__\/                     \__\/         \__\/    

]]

local Clock = script.Parent

while true do 
	Clock.Min.Rotation = os.date("*t").min * 6
	Clock.hour.Rotation = os.date("*t").hour * 6
	Clock.sec.Rotation = os.date("*t").sec * 6
	wait(1)
end
