local oslinux = require("../main")


local file = "test/oslinux-test-rm.txt"

run = function(file) 
	comands = OsLinux()
	comands = touch(file)
	comands = rmfile(file)
	if comands == "OK" then 
		print(comands, " TESTERM")
		return "OK"
	else
		return "ERROR"
	end
	
end

run(file)



