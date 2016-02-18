do

local function run(msg, matches)
  if not is_admin(msg) then
    return "شما دسترسی لازم ندارید"
  end
  local receiver = get_receiver(msg)
  if matches[1] == 'send' then
    
    local file = matches[3]
    
    if matches[2] == 'sticker' and not matches[4] then
      send_document(receiver, "./media/"..file..".webp", ok_cb, false)
    end
    
     if matches[2] == 'file' then
      local extension = matches[4]
      send_document(receiver, "./media/"..file..'.'..extension, ok_cb, false)
    end
    
    if matches[2] == 'plugin' then
      send_document(receiver, "./plugins/"..file..".lua", ok_cb, false)
    end
    
    if matches[2] == 'dev' or matches[2] == 'm4ster' or matches[2] == 'master' or matches[2] == 'developer' or matches[2] == 'creator'then
      local extension = matches[4]
      if matches[3] == 'file' then
        send_document(receiver, "./media/M4STER.png", ok_cb, false)
      elseif matches[3] ~= 'file' or not matches[3] then
        send_photo(receiver, "./media/M4STER.png", ok_cb, false)
      end
    end
  
    if matches[2] == 'manual' and is_admin(msg) then
      local ruta = matches[3]
      local document = matches[4]
      send_document(receiver, "./"..ruta.."/"..document, ok_cb, false)
    end
  
  end
  
  if matches[1] == 'extensions' then
    return 'No disponible actualmente'
  end
  
  if matches[1] == 'list' and matches[2] == 'files' then
    return 'No disponible actualmente'
    —send_document(receiver, "./media/files/files.txt", ok_cb, false)
  end
end

return {
  description = "Kicking ourself (bot) from unmanaged groups.",
  usage = {
    "!list files : Envía un archivo con los nombres de todo lo que se puede enviar",
    "!extensions : Envía un mensaje con las extensiones para cada tipo de archivo permitidas",
    "➖➖➖➖➖➖➖➖➖➖",
       "!send file <nombre del archivo> <extension del archivo> : Envía ese archivo del servidor",
    "!send plugin <Nombre del plugin> : Envía ese archivo del servidor",
    "!send manual <Ruta de archivo> <Nombre del plugin> : Envía un archivo desde el directorio TeleSeed",
    "!send dev : Envía una foto del desarrollador"
  },
  patterns = {
  "^[!/](send) (.*) (.*) (.*)$",
  "^[!/](send) (.*) (.*)$",
  "^[!/](send) (.*)$",
  "^[!/](list) (files)$",
  "^[!/](extensions)$"
  },
  run = run
}
end
