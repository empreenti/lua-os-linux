oslinux = require("../main")

run = function() 
	comands = OsLinux()
	comands = touch("/home/home/Documentos/Projeto/lua-os-linux/test/TesteTouch.txt")
	if comands then 
		print(comands, " TESTETOUCH")
		return "OK"
	else
		return "ERROR"
	end
	
end

run()

