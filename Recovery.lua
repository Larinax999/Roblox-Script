local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Recovery By larina", 5013109572)
local tb_all_mobs = {"Pathfinder" , "Prick" , "Roamer"}

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Hi")

section1:addToggle("Full Bright", nil, function(value)
    if value == true then
        game:GetService("Lighting").Brightness = 10000000
        game:GetService("Lighting").FogEnd = 10000000
        game:GetService("Lighting").FogStart = 10000000 
        game:GetService("Lighting").Ambient = Color3.fromRGB(255,255,255) 
    else 
        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").FogEnd = 100000 
        game:GetService("Lighting").FogStart = 0
        game:GetService("Lighting").Ambient = Color3.fromRGB(0,0,0) 
    end
end)
section1:addToggle("ESP", nil, function(value)
    if value == true then
        for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
            if table.find(tb_all_mobs,v.Name) then
                if not v.Head:FindFirstChild("BillboardGui") then
                    local BillboardGui = Instance.new("BillboardGui")
                    local TextLabel = Instance.new("TextLabel")
                    BillboardGui.Parent = v.Head
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.LightInfluence = 1
                    BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                    BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
                    TextLabel.Parent = BillboardGui
                    TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
                    TextLabel.BackgroundTransparency = 1
                    TextLabel.Size = UDim2.new(0, 1, 0, 1)
                    TextLabel.TextSize = 20
                    TextLabel.Font = "ArialBold"
                    TextLabel.TextStrokeTransparency = 0
                    TextLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
                    TextLabel.Text = v.Name
                end
            end
        end
    else 
        for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
            if table.find(tb_all_mobs,v.Name) then
                if v.Head:FindFirstChild("BillboardGui") then
                    v.Head:FindFirstChild("BillboardGui"):Destroy()
                end
            end
        end
    end
end)
section1:addButton("tp to Gear", function()
for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
    if v.DataCost == 43 then
        if v.Handle.MeshId == "rbxassetid://2284623510" then
            local plr1 = game.Players.LocalPlayer.Character
            plr1.HumanoidRootPart.CFrame = v.Handle.CFrame
            break
        end
    end
end
end)
section1:addButton("tp to lift", function()
    local plr1 = game.Players.LocalPlayer.Character
    for i,v in pairs(game:GetService("Workspace").Map.Zone3.Lift:GetChildren()) do
        if (v.DataCost == 1930) then
            plr1.HumanoidRootPart.CFrame = v.Elevator.Part.CFrame * CFrame.new(0,2,0)
            print("Found Lift")
            break
        end
    end
end)

-- load
venyx:SelectPage(venyx.pages[1], true)
