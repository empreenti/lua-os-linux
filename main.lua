os = require("os")

OsLinux = function()
	 touch = function(Path)
		complete = "touch " .. Path
		touch = os.execute(complete)
		if touch == false then
			io.write("[ERROR] TOUCH COMMAND NOT AVAILABLE OR INCORRECT PATH\n")
		else
			return "OK"
		end
	end
	
	 mkdir = function(Path)
		complete = "mkdir " .. Path
		mkdir = os.execute(complete)
		if mkdir == false then
			io.write("[ERROR] MKDIR COMMAND NOT AVAILABLE OR INCORRECT PATH\n")
		else
			return "OK"
		end
	end
	
	ls = function(Path)
		
	end
end


