local function run(msg)
if msg.text == "hi" then
	return "Hello aziz"
end
if msg.text == "Hi" then
	return "Hello aziz"
end
if msg.text == "Hello" then
	return "Hi aziz"
end
if msg.text == "hello" then
	return "Hi azizm"
end
if msg.text == "Salam" then
	return "Salam khobi?"
end
if msg.text == "salam" then
	return "و علیک السلام"
end
if msg.text == "CECTEAM" then    
	return "BEst TEAM In The World!"
end
if msg.text == "CECtg" then
	return "Best Bot In The World!"
end
if msg.text == "CECTG" then
	return "Best Bot In The World"
end
if msg.text == "parham" then
	return "Yes?"
end
if msg.text == "Parham" then
	return "Yes?"
end
if msg.text == "bot" then
	return "junm?"
end
if msg.text == "Bot" then
	return "junm?"
end
if msg.text == "?" then
	return "Hum??"
end
if msg.text == "Bye" then
	return "Bye aziz"
end
if msg.text == "bye" then
	return "Bye ghashangam"
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
		"^[Hh]i$",
		"^[Hh]ello$",
		"^[Zz]ac$",
		"^InfernalTG$",
		"^[Bb]ot$",
		"^[Ii]nfernal$",
		"^[Bb]ye$",
		"^?$",
		"^[Ss]alam$",
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
