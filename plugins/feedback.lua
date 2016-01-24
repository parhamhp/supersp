function run(msg, matches)

local fuse = '#newfeedback \n\nid : ' .. msg.from.id .. '\n\nName : ' .. msg.from.print_name ..'\n\nLetters :\n\n\n' .. matches[1] 
local fuses = '!printf user#id' .. msg.from.id


 local text = matches[1]
 bannedidone = string.find(msg.from.id, '123')
 bannedidtwo =string.find(msg.from.id, '465') 
 bannedidthree =string.find(msg.from.id, '678') 


 print(msg.to.id)

 if bannedidone or bannedidtwo or bannedidthree then â€”for banned people
 return 'You are banned to send a feedback'
 else


 local sends0 = send_msg('chat#id149228796', fuse, ok_cb, false)

 return 'Sent !'

 

end

end
return {
 description = "Feedback",

 usage = "!feedback message",
 patterns = {
 "^![Ff]eedback (.*)$"

 },
 run = run
}

end
