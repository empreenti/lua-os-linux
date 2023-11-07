os = require("os")
io = require("io")

OsLinux = function()
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
			
			if ls == false then
				io.write("[ERROR] LS COMMAND NOT AVAILABLE OR INCORRECT PATH\n")
				return "ERROR"
			else
				local save = {}
				local file = io.open(PathFile)
				local pos = 1
				for i in file.lines(100) do
					table.insert(save, pos, i)
					pos = pos + 1
				end
				file:close()
				local rm = rmfile(PathFile)
				
				if rm == "ERROR" then
					io.write("[ERROR] RM COMMAND NOT AVAILABLE OR INCORRECT PATH\n")
					return "ERROR"
				else
					return {save, "OK"}
				end
			end
		end
	end
end


