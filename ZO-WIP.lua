local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/lolpoppyus/Roblox-Lua/master/Pop%20UI%20Lib", true))()
local Players = game:GetService("Players")
local virtualUser = game:GetService('VirtualUser')
local key_b = "E"
local ply = game.Players.LocalPlayer
local hum = ply.Character.HumanoidRootPart
_G.toggle_tp = false

local Tab = library:Tab("Main")

local update = Tab:Dropdown("Players", {},function(arg)
   _G.v = Players[arg]
end)

Tab:Textstring("Keybind", "E")

game:GetService("UserInputService").InputBegan:Connect(function(input, gui)
if input.KeyCode == Enum.KeyCode[key_b] then
    if _G.toggle_tp == true then
        _G.toggle_tp = false
    else 
        _G.toggle_tp = true
        repeat
            hum = ply.Character.HumanoidRootPart
            hum.CFrame = _G.v.Character.HumanoidRootPart.CFrame + _G.v.Character.HumanoidRootPart.CFrame.lookVector * -1.5
            wait()
        until _G.toggle_tp == false
    end
end
end)
print("[larina hub] loaded")

while wait(1) do
   local players = game.Players:GetChildren()
   local array = {}

   for i,v in pairs(players) do
       table.insert(array,v.Name)
   end

   update(array)
end;