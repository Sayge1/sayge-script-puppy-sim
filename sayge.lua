local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/teppyboy/RbxScripts/master/Misc/UI_Libraries/Finity/Library.lua"))()
local FinityWindow = Finity.new(true)
FinityWindow.ChangeToggleKey(Enum.KeyCode.Z)
local AutofarmCategory = FinityWindow:Category("Autofarm")
local MiscCategory = FinityWindow:Category("Misc")

local AutoTp = AutofarmCategory:Sector("Auto Tp(Semi Working)")
local Autofarm = AutofarmCategory:Sector("Autofarm")
local AutoUse = AutofarmCategory:Sector("Auto-Use")

AutoTp:Cheat(
	"Checkbox", -- Type
	"Auto Bones", -- Name
	function(State) -- Callback function
		local Players = game.Players
        local Player = Players.LocalPlayer

        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumRoot = Character:WaitForChild("HumanoidRootPart")

        local Parts = game.Workspace.Tokens.Local
        while State == true do
            while task.wait(1) do
                for _, Object in next, Parts:GetChildren() do
                    if Object.Name == "Bone" then
                        Object.CFrame = HumRoot.CFrame
                    end
                end
	    if State == false then
				break
            end			
            end
	    end
	end    
)

AutoTp:Cheat(
	"Checkbox", -- Type
	"Auto Abilities", -- Name
	function(State1) -- Callback function
		local Players = game.Players
        local Player = Players.LocalPlayer

        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumRoot = Character:WaitForChild("HumanoidRootPart")

        local Parts = game.Workspace.Tokens.Local
        while State1 == true do
            while task.wait(1) do
                for _, Object in next, Parts:GetChildren() do
                    if Object.Name == "Blue Yummy" or Object.Name == "Gold Yummy" or Object.Name == "Bomb" or Object.Name == "Hasty" or Object.Name == "Lucky Break" or Object.Name == "Dinamite" or Object.Name == "Gold Bomb" or Object.Name == "Blue Bomb" or Object.Name == "Magic Carrot" or Object.Name == "Triple Jump" or Object.Name == "Linking Beam" or Object.Name == "Bones Pumpkin" or Object.Name == "Rage" then
                        Object.CFrame = HumRoot.CFrame
                    end
                end
	    if State1 == false then
					
				break
            end			
            end
	    end
	end    
)

AutoTp:Cheat(
	"Checkbox", -- Type
	"Auto Fruits", -- Name
	function(State2) -- Callback function
		local Players = game.Players
        local Player = Players.LocalPlayer

        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumRoot = Character:WaitForChild("HumanoidRootPart")

        local Parts = game.Workspace.Tokens.Local
        while State2 == true do
            while task.wait(1) do
                for _, Object in next, Parts:GetChildren() do
                    if Object.Name == "Grape" or Object.Name == "Melon" or Object.Name == "Raspberry" or Object.Name == "Rice" then
                        Object.CFrame = HumRoot.CFrame
                    end
                end
	    if State2 == false then
				break
            end			
            end
	    end
	end    
)

Autofarm:Cheat("Slider", "Farm Time", function(farmtime)
	print("Silder value changed:", farmtime)
end, {min = 1, max = 180, suffix = " min"})

Autofarm:Cheat("Slider", "Convert Time", function(converttime)
	print("Silder value changed:", converttime)
end, {min = 1, max = 60, suffix = " min"})

Autofarm:Cheat(
	"Checkbox", -- Type
	"Autoconvert", -- Name
	function(State3) -- Callback function
	
        while 3 do
            local Players = game.Players
            local Player = Players.LocalPlayer

            local Character = Player.Character or Player.CharacterAdded:Wait()
            local HumRoot = Character:WaitForChild("HumanoidRootPart")

            oldcframe = HumRoot.CFrame
            wait(1)
            HumRoot.CFrame = game:GetService("Workspace").Map["Loc 1"].BoneConverter.ConvertMachine.Cylinder.Border1.CFrame
            wait(5)
            local A_1 = "On"
            local Event = game:GetService("ReplicatedStorage").Remotes.Player.UseConvertMachine
            Event:InvokeServer(A_1)
            wait(1)
            HumRoot.CFrame = oldcframe

	end			
	end    
)
