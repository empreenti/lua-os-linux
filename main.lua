os = require("os")
io = require("io")
	 touch = function(Path)
		local complete = "touch " .. Path
		local comandtouch = os.execute(complete)
		if comandtouch == false then
			io.write("[ERROR] TOUCH COMMAND NOT AVAILABLE OR INCORRECT PATH\n")
			return "ERROR"
		else
			return "OK"
		end
	end
	
	 mkdir = function(Path)
		local complete = "mkdir " .. Path
		local mkdir = os.execute(complete)
		if mkdir == false then
			io.write("[ERROR] MKDIR COMMAND NOT AVAILABLE OR INCORRECT PATH\n")
			return "ERROR"
		else
			return "OK"
		end
	end
	
	rmfile = function(Path)
		local complete = "rm " .. Path
		local rm = os.execute(complete)
		if rm == false then
			io.write("[ERROR] RM COMMAND NOT AVAILABLE OR INCORRECT PATH\n")
			return "ERROR"
		else
			return "OK"
		end
	end
	
	ls = function(Path)
		local PathFile = "/tmp/ls-oslinux-liblua.txt"
		local runtouch = touch(PathFile)
		local complete = "ls " .. Path .. " > " .. PathFile
		
		
		if runtouch == "ERROR" then
			io.write("[ERROR] THE TOUCH COMMAND WAS UNABLE TO CREATE THE OUTPUT FILE\n")
			return "ERROR"
		elseif runtouch == "OK" then
			local ls = os.execute(complete)
			
			if ls == true then
				local file = io.open(PathFile)
				local result = file:read("*a")
				file:close()
				
				save = {}
				
				for token in string.gmatch(result, "[^%s]+") do
				   table.insert(save, token)
				end
				return save
			else
				io.write("[ERROR] LS COMMAND NOT AVAILABLE OR INCORRECT PATH\n")
				return "ERROR"
			end
		end
	end
