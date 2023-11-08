local oslinux = require("../main")
run = function()
	local Path = "/tmp/"
	local ls = ls(Path)
	if ls == "ERROR" then 
		print("ERROR")
		return "ERROR"
	else 
		for c, i in pairs(ls) do
			print(i)
		end
		return "OK"
	end
	
	
end
run()
