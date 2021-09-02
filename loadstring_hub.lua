local DiscordLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt"),true))()

local win = DiscordLib:Window("loadstring hub")
local serv = win:Server("Main", "http://www.roblox.com/asset/?id=6031075938")

function non() 
DiscordLib:Notification("loader", "Hold on a sec", "Okay!")
end

local main_page = serv:Channel("working all game")
local etc_page = serv:Channel("working some game")
local bf_page = serv:Channel("Blox Fruit")
local dev_page = serv:Channel("dev tool")

main_page:Button("infiniteyield", function()
non()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

main_page:Button("Dark Hub", function()
non()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init", true))()
end)


main_page:Button("impulse hub", function()
non()
loadstring(game:HttpGet('http://impulse-hub.xyz/ImpulseHub',true))()
end)

main_page:Button("tanny hub", function()
non()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Paphawin130/Tannyhub/main/TannyHub.lua"))()
end)

etc_page:Button("polar hub", function()
non()
_G.key = "POLAR_IS_THE_BEST"

loadstring(game:HttpGet("https://polarhub.xyz/PolarFreeScript.lua"))()
end)

bf_page:Button("evil hub", function()
non()
https://raw.githubusercontent.com/Natthawat69/EvilHub-FREE/main/Script.lua
end)

dev_page:Button("SimpleSpy (syn x only)", function()
non()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Natthawat69/EvilHub-FREE/main/Script.lua"))()
end)

dev_page:Button("rejoin", function()
non()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)



serv:Channel("by larina#9999")
