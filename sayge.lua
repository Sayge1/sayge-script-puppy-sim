local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/teppyboy/RbxScripts/master/Misc/UI_Libraries/Finity/Library.lua"))()
local FinityWindow = Finity.new(true, "Lumus")
FinityWindow.ChangeToggleKey(Enum.KeyCode.Z)
local AutofarmCategory = FinityWindow:Category("Autofarm")
local MiscCategory = FinityWindow:Category("Misc")

local AutoTp = AutofarmCategory:Sector("Auto Tp(Semi Working)")
local Autofarm = AutofarmCategory:Sector("Autofarm")
local AutoUse = AutofarmCategory:Sector("Auto-Use")
local PlayerStats = MiscCategory:Sector("Player")

AutoTp:Cheat(
	"Checkbox", -- Type
	"Auto Bones", -- Name
	function(State) -- Callback function
		turnautobones = State
	    local Players = game.Players
        local Player = Players.LocalPlayer

        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumRoot = Character:WaitForChild("HumanoidRootPart")

        local Parts = game.Workspace.Tokens.Local
        while turnautobones do
            task.wait(1)
            for _, Object in next, Parts:GetChildren() do
  
                if Object.Name == "Bone" then
                    Object.CFrame = HumRoot.CFrame
                end
            end
		

	    end
	end    
)

AutoTp:Cheat(
	"Checkbox", -- Type
	"Auto Abilities", -- Name
	function(State1) -- Callback function
		turnautoabilities = State1
		local Players = game.Players
        local Player = Players.LocalPlayer

        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumRoot = Character:WaitForChild("HumanoidRootPart")

        local Parts = game.Workspace.Tokens.Local
        while turnautoabilities do
            task.wait(1)		
           
            for _, Object in next, Parts:GetChildren() do
  
                if Object.Name == "Blue Yummy" or Object.Name == "Gold Yummy" or Object.Name == "Bomb" or Object.Name == "Hasty" or Object.Name == "Lucky Break" or Object.Name == "Dinamite" or Object.Name == "Gold Bomb" or Object.Name == "Blue Bomb" or Object.Name == "Magic Carrot" or Object.Name == "Triple Jump" or Object.Name == "Linking Beam" or Object.Name == "Bones Pumpkin" or Object.Name == "Rage" then
                    Object.CFrame = HumRoot.CFrame
                end
            end

            
           
	    end
	end    
)

AutoTp:Cheat(
	"Checkbox", -- Type
	"Auto Fruits", -- Name
	function(State2) -- Callback function
		turnautofruits = State2
		local Players = game.Players
        local Player = Players.LocalPlayer

        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumRoot = Character:WaitForChild("HumanoidRootPart")

        local Parts = game.Workspace.Tokens.Local
        while turnautofruits do
            task.wait(1)		
             
            for _, Object in next, Parts:GetChildren() do

                if Object.Name == "Grape" or Object.Name == "Melon" or Object.Name == "Raspberry" or Object.Name == "Rice" then
                    Object.CFrame = HumRoot.CFrame
                end
            end

		

	    end
	end    
)

Autofarm:Cheat("Slider", "Farm Time", function(farmtime)
    farmtime1 = farmtime
end, {min = 1, max = 180, suffix = " min"})

Autofarm:Cheat("Slider", "Convert Time", function(converttime)
    converttime1 = converttime
end, {min = 1, max = 60, suffix = " min"})

Autofarm:Cheat(
	"Checkbox", -- Type
	"Autoconvert", -- Name
	function(State3) -- Callback function
		turnautoconvert = State3
		local Players = game.Players
        local Player = Players.LocalPlayer

        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumRoot = Character:WaitForChild("HumanoidRootPart")
		oldcframe = HumRoot.CFrame
        while turnautoconvert do
            task.wait(farmtime1 * 60)
			HumRoot.CFrame = game:GetService("Workspace").Map["Loc 1"].BoneConverter.ConvertMachine.Cylinder.Border1.CFrame
            task.wait(5)
            local A_1 = "On"
            local Event = game:GetService("ReplicatedStorage").Remotes.Player.UseConvertMachine
            Event:InvokeServer(A_1)
            task.wait(converttime1 * 60)
            HumRoot.CFrame = oldcframe
             
	    end			
	end    
)

PlayerStats:Cheat(
	"Checkbox", -- Type
	"WalkSpeed", -- Name
	function(State4) -- Callback function
      local Players = game.Players
      local Player = Players.LocalPlayer

      local Character = Player.Character or Player.CharacterAdded:Wait()
      
      turnspeed = State4
      while turnspeed do
         task.wait(1)
         Character.Humanoid.WalkSpeed = Speed1
      end       
	end
)

PlayerStats:Cheat(
	"Checkbox", -- Type
	"WalkSpeed(for farms, maybe more lags)", -- Name
	function(State6) -- Callback function
      local Players = game.Players
      local Player = Players.LocalPlayer

      local Character = Player.Character or Player.CharacterAdded:Wait()
      
      turnspeed1 = State6
      while turnspeed1 do
         task.wait(0.1)
         Character.Humanoid.WalkSpeed = Speed1
      end       
	end
)

PlayerStats:Cheat(
	"Checkbox", -- Type
	"JumpPower", -- Name
	function(State5) -- Callback function
		local Players = game.Players
      local Player = Players.LocalPlayer

      local Character = Player.Character or Player.CharacterAdded:Wait()
      
      turnjump = State5
      while turnjump do
         task.wait(1)
         Character.Humanoid.JumpHeight = Jump1
      end    
	end
)


PlayerStats:Cheat("Slider", "Walk Speed", function(Speed)
	Speed1 = Speed
end, {min = 1, max = 100, suffix = " speed"})

PlayerStats:Cheat("Slider", "Jump Power", function(Jump)
   Jump1 = Jump
end, {min = 1, max = 100, suffix = " jump"})

AutoTp:Cheat(
	"Checkbox", -- Type
	"СБОР ВСЕГО", -- Name
	function(State7) -- Callback function
		turnautocollectall = State7
	    local Players = game.Players
        local Player = Players.LocalPlayer

        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumRoot = Character:WaitForChild("HumanoidRootPart")

        local Parts = game.Workspace.Tokens.Local
        while turnautocollectall do
            task.wait(sborvsego1)
            for _, Object in next, Parts:GetChildren() do
  
                if Object.Name == "Bone" or "Coin" then
                    Object.CFrame = HumRoot.CFrame
                end
            end
		

	    end
	end    
)

AutoTp:Cheat("Slider", "кд СБОРА ВСЕГО", function(sborvsego)
   sborvsego1 = sborvsego
end, {min = 1, max = 10, suffix = " sec"})

AutoTp:Cheat(
	"Checkbox", -- Type
	"Auto Chest", -- Name
	function(State8) -- Callback function
		turnautochest = State8
	    local Players = game.Players
        local Player = Players.LocalPlayer

        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumRoot = Character:WaitForChild("HumanoidRootPart")

        local Parts = game.Workspace.Fields.Field4
		
        while turnautochest do
            task.wait(10)
            for _, Object in next, Parts:GetChildren() do
  
                if Object.Name == "Mud" then
                    HumRoot.CFrame = Object.Mud.Mud.CFrame
                end
            end
		

	    end
	end    
)
