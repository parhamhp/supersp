local function run(msg, matches)

local text = matches[1]

local b = 1

while b ~= 0 do

text = text:trim()

text,b = text:gsub('^!+','')

end

local name = matches[2]

local file = io.open("./plugins/"..name..matches[3], "w")

file:write(text)

file:flush()

file:close()

return "done"

end

return {

description = "Simplest plugin ever!",

usage = "",

patterns = {

"^!addplugin +(.+) (.*) (.*)$"

},

run = run

}
