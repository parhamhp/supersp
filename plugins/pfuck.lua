do

function run(msg, matches)
  return "kos nanat madaret jendas pedar sag, " .. matches[1]
end

return {
  description = "Says fohsh to someone", 
  usage = "say fohsh to [name]",
  patterns = {
    "^[Ss]ay fohsh to (.*)$",
    "^[Ss]ay fohsh to (.*)$"
  }, 
  run = run 
}

end
