oslinux = require("../main")



run = function() 
	comands = OsLinux()
	comands = mkdir("TesteMkdir")
	if comands then 
		print(comands, " TESTEMKDIR")
		return "OK"
	else
		return "ERROR"
	end
	
end

run()



