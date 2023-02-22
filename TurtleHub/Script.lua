local Library = loadstring(game:HttpGet("https://pastebin.com/raw/aC8GQEKE"))()
local ui = Library:CreateWindow()

local FarmTable = {}
local AreaTable = {}

for _,Client in pairs(game:GetService("Workspace").__AREAS.Spawn:GetChildren()) do
    table.insert(FarmTable, Client.Name)
end

for _,ClientArea in pairs(game:GetService("Workspace").__AREAS:GetChildren()) do
    table.insert(AreaTable, ClientArea.Name)
end



local Main = ui:new("Farm")

Main:CreateDropdown("Select Farm", FarmTable, function(_)
      farmType = _
end)

Main:CreateDropdown("Select Area", AreaTable, function(_)
      AreaType = _
end)

Main:CreateToggle("Farm", false, function(_)
     TogglesFarm = _
  
       while wait() do
        if TogglesFarm == false then break end
local args = {
    [1] = workspace.__AREAS.AreaType.farmType,
    [2] = workspace.__CLIENT.__PLAYER.Rivanda_Cheater:FindFirstChild("Normal Tank")
}

game:GetService("ReplicatedStorage").__REMOTES.__Cannon_Attack:FireServer(unpack(args))
end
end)
