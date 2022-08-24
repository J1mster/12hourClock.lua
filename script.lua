--	 	  JJJJJJJJJJJ  iiii                                                    tttt                                                  	 
--	          J:::::::::J i::::i                                                ttt:::t                                                  	 
--	          J:::::::::J  iiii                                                 t:::::t                                                  	 
--	          JJ:::::::JJ                                                       t:::::t                                                  	 
--	            J:::::J  iiiiiii    mmmmmmm    mmmmmmm       ssssssssss   ttttttt:::::ttttttt        eeeeeeeeeeee    rrrrr   rrrrrrrrr   	 
--	            J:::::J  i:::::i  mm:::::::m  m:::::::mm   ss::::::::::s  t:::::::::::::::::t      ee::::::::::::ee  r::::rrr:::::::::r  	 
--	            J:::::J   i::::i m::::::::::mm::::::::::mss:::::::::::::s t:::::::::::::::::t     e::::::eeeee:::::eer:::::::::::::::::r 	 
--	            J:::::j   i::::i m::::::::::::::::::::::ms::::::ssss:::::stttttt:::::::tttttt    e::::::e     e:::::err::::::rrrrr::::::r	 
--	            J:::::J   i::::i m:::::mmm::::::mmm:::::m s:::::s  ssssss       t:::::t          e:::::::eeeee::::::e r:::::r     r:::::r	 
--	JJJJJJJ     J:::::J   i::::i m::::m   m::::m   m::::m   s::::::s            t:::::t          e:::::::::::::::::e  r:::::r     rrrrrrr	 
--	J:::::J     J:::::J   i::::i m::::m   m::::m   m::::m      s::::::s         t:::::t          e::::::eeeeeeeeeee   r:::::r            	 
--	J::::::J   J::::::J   i::::i m::::m   m::::m   m::::mssssss   s:::::s       t:::::t    tttttte:::::::e            r:::::r            	 
--	J:::::::JJJ:::::::J  i::::::im::::m   m::::m   m::::ms:::::ssss::::::s      t::::::tttt:::::te::::::::e           r:::::r            	 
--  	 JJ:::::::::::::JJ   i::::::im::::m   m::::m   m::::ms::::::::::::::s       tt::::::::::::::t e::::::::eeeeeeee   r:::::r            	 
--	   JJ:::::::::JJ     i::::::im::::m   m::::m   m::::m s:::::::::::ss          tt:::::::::::tt  ee:::::::::::::e   r:::::r            	 
--	     JJJJJJJJJ       iiiiiiiimmmmmm   mmmmmm   mmmmmm  sssssssssss              ttttttttttt      eeeeeeeeeeeeee   rrrrrrr      

local TimeUI = script.Parent

while true do 
	if os.date("*t").hour > 12 then 
		wait(1)
		if os.date("*t").min > 10 then
			TimeUI.Text = os.date("*t").hour-12 ..":" .. os.date("*t").min .."PM" 
		else
			TimeUI.Text = os.date("*t").hour-12 ..":0" .. os.date("*t").min .."PM" 
		end
	else 
		wait(1)
		if os.date("*t").min > 10 then
			TimeUI.Text = os.date("*t").min ..":" .. os.date("*t").min 
		else
			TimeUI.Text = os.date("*t").min ..":0" .. os.date("*t").min 
		end
	end

	wait(5)
end
