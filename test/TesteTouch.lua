oslinux = require("../main")

run = function() 
	comands = touch("/home/home/Documentos/Projeto/lua-os-linux/test/TesteTouch.txt")
	if comands == "OK" then 
		print(comands, " TESTETOUCH")
		return "OK"
	else
		return "ERROR"
	end
	
end

run()

