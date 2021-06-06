local tb_all_mobs = {"Pathfinder" , "Prick" , "Roamer"}
local ply = game.Players.LocalPlayer
for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
    if table.find(tb_all_mobs,v.Name) then
        if not v.Head:FindFirstChild("BillboardGui") then
            local dts = (ply.Character.HumanoidRootPart.Position - v.Head.Position).magnitude
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
game:GetService("Lighting").Brightness = 10000000 --1
game:GetService("Lighting").FogEnd = 10000000 --100,000
game:GetService("Lighting").FogStart = 10000000 -- 0
game:GetService("Lighting").Ambient = Color3.fromRGB(255,255,255) --0,0,0