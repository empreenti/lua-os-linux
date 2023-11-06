oslinux = require("init")



run = function() 
	comands = OsLinux()
	comands = mkdir("TesteMkdir")
	if comands then 
		print(comands, " TESTEMKDIR")
		return "OK"
	end
	
end



