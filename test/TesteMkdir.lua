oslinux = require("../main")



run = function() 
	comands = mkdir("TesteMkdir")
	if comands == "OK" then 
		print(comands, " TESTEMKDIR")
		return "OK"
	else
		return "ERROR"
	end
	
end

run()



