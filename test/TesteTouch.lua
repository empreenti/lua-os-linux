oslinux = require("init")

run = function() 
	comands = OsLinux()
	comands = touch("/home/home/Documentos/Projeto/lua-os-linux/test/TesteTouch.txt")
	if comands then 
		print(comands, " TESTETOUCH")
		return "OK"
	end
	
end

