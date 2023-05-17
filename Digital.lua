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


local SecondsEnabled = false



local TimeUI = script.Parent

while true do 
	if SecondsEnabled == false then
		if os.date("*t").hour > 12 then 
		wait(1)
			if os.date("*t").min > 10 then
				TimeUI.Text = os.date("*t").hour-12 ..":" .. os.date("*t").min .."AM" 
			else
				TimeUI.Text = os.date("*t").hour-12 ..":0" .. os.date("*t").min .."AM" 
			end
		else 
			if os.date("*t").min > 10 then
				TimeUI.Text = os.date("*t").min ..":" .. os.date("*t").min .. "PM"
			else
				TimeUI.Text = os.date("*t").min ..":0" .. os.date("*t").min .. "PM"
			end
		end
	elseif SecondsEnabled == true then
		if os.date("*t").hour > 12 then 
			if os.date("*t").min > 10 then
				TimeUI.Text = os.date("*t").hour-12 ..":" .. os.date("*t").min ..":" .. os.date("*t").sec .."AM" 
			else
				TimeUI.Text = os.date("*t").hour-12 ..":0" .. os.date("*t").min ..":" .. os.date("*t").sec .."AM" 
			end
		else 
			if os.date("*t").min > 10 then
				if  os.date("*t").sec>10 then
					TimeUI.Text = os.date("*t").min ..":" .. os.date("*t").min .. ":0" .. os.date("*t").sec .. "PM"
				else
					TimeUI.Text = os.date("*t").min ..":" .. os.date("*t").min .. ":" .. os.date("*t").sec .. "PM"
				end
			else
				if  os.date("*t").sec>10 then
					TimeUI.Text = os.date("*t").min ..":0" .. os.date("*t").min .. ":0" .. os.date("*t").sec .. "PM"
				else
					TimeUI.Text = os.date("*t").min ..":0" .. os.date("*t").min .. ":" .. os.date("*t").sec .. "PM"
				end
			end
		end
	end
	wait(0.1)
end
