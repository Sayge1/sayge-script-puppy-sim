local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/teppyboy/RbxScripts/master/Misc/UI_Libraries/Finity/Library.lua"))()
local FinityWindow = Finity.new(true, "Lumus")
FinityWindow.ChangeToggleKey(Enum.KeyCode.Z)
local AutofarmCategory = FinityWindow:Category("Autofarm")
local MiscCategory = FinityWindow:Category("Misc")

local AutoTp = AutofarmCategory:Sector("Auto Tp(Semi Working)")
local Autofarm = AutofarmCategory:Sector("Autofarm")
local AutoUse = AutofarmCategory:Sector("Auto-Use")
local PlayerStats = MiscCategory:Sector("Player")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

AutoTp:Cheat(
	"Checkbox", -- Type
	"Auto Bones (tween)", -- Name
	function(State) -- Callback function
		turnautobones = State
		local TweenService = game:GetService("TweenService")
		local Players = game.Players
		local Player = Players.LocalPlayer
		local Character = Player.Character or Player.CharacterAdded:Wait()
		local HumRoot = Character:WaitForChild("HumanoidRootPart")
		local workspace = game:GetService("Workspace")
		local Parts = game.Workspace.Tokens.Local
		local backlog = {}
		while turnautobones do
    		Parts.ChildAdded:Connect(function(child)
        		if child.Name == "Bone" or child.Name == "Coin" then
            		table.insert(backlog, child)
        		end
    		end)
    		while true do
        		local object = backlog[1]
        		if not object then
            		Parts.ChildAdded:Wait()
            		continue
        		end
        		goal = {CFrame = object.CFrame}
        		local tweeninfo = TweenInfo.new(0.1, Enum.EasingStyle.Sine,Enum.EasingDirection.Out, 0, false, 0)
        		local tween = TweenService:Create(HumRoot, tweeninfo, goal)
        		tween:Play()
        		table.remove(backlog, 1)
        	end
		end
	end
)

AutoTp:Cheat(
	"Checkbox", -- Type
	"Auto Bones", -- Name
	function(State_bones) -- Callback function
		turnfarmbones = State_bones
	    local Players = game.Players
        local Player = Players.LocalPlayer

        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumRoot = Character:WaitForChild("HumanoidRootPart")

        local Parts = game.Workspace.Tokens.Local
        while turnfarmbones do
            task.wait(1)
            for _, Object in next, Parts:GetChildren() do
  
                if Object.Name == "Bone" or Object.Name == "Coin" then
                    Object.CFrame = HumRoot.CFrame
                end
            end
		

	    end
	end    
)

AutoTp:Cheat(
	"Checkbox", -- Type
	"Auto Abilities (tween)", -- Name
	function(State1) -- Callback function
		turnautoabilities = State1
		local TweenService = game:GetService("TweenService")
		local Players = game.Players
		local Player = Players.LocalPlayer
		local Character = Player.Character or Player.CharacterAdded:Wait()
		local HumRoot = Character:WaitForChild("HumanoidRootPart")
		local workspace = game:GetService("Workspace")
		local Parts = game.Workspace.Tokens.Local
		local backlog = {}
		while turnautoabilities do
    		Parts.ChildAdded:Connect(function(child)
        		if child.Name == "Blue Yummy" or child.Name == "Gold Yummy" or child.Name == "Bomb" or child.Name == "Hasty" or child.Name == "Lucky Break" or child.Name == "Dinamite" or child.Name == "Gold Bomb" or child.Name == "Blue Bomb" or child.Name == "Magic Carrot" or child.Name == "Triple Jump" or child.Name == "Linking Beam" or child.Name == "Bones Pumpkin" or child.Name == "Rage" then
            		table.insert(backlog, child)
        		end
    		end)
    		while true do
        		local object = backlog[1]
        		if not object then
            		Parts.ChildAdded:Wait()
            		continue
        		end
        		goal = {CFrame = object.CFrame}
        		local tweeninfo = TweenInfo.new(0.1, Enum.EasingStyle.Sine,Enum.EasingDirection.Out, 0, false, 0)
        		local tween = TweenService:Create(HumRoot, tweeninfo, goal)
        		tween:Play()
        		table.remove(backlog, 1)
        	end
		end
	end
)

AutoTp:Cheat(
	"Checkbox", -- Type
	"Auto Abilities", -- Name
	function(State_abilities) -- Callback function
		turnabilities = State_abilities
	    local Players = game.Players
        local Player = Players.LocalPlayer

        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumRoot = Character:WaitForChild("HumanoidRootPart")

        local Parts = game.Workspace.Tokens.Local
        while turnabilities do
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
		local TweenService = game:GetService("TweenService")
		local Players = game.Players
		local Player = Players.LocalPlayer
		local Character = Player.Character or Player.CharacterAdded:Wait()
		local HumRoot = Character:WaitForChild("HumanoidRootPart")
		local workspace = game:GetService("Workspace")
		local Parts = game.Workspace.Tokens.Local
		local backlog = {}
		while turnautobones do
    		Parts.ChildAdded:Connect(function(child)
        		if child.Name == "Grape" or child.Name == "Melon" or child.Name == "Raspberry" or child.Name == "Rice" then
            		table.insert(backlog, child)
        		end
    		end)
    		while true do
        		local object = backlog[1]
        		if not object then
            		Parts.ChildAdded:Wait()
            		continue
        		end
        		goal = {CFrame = object.CFrame}
        		local tweeninfo = TweenInfo.new(0.1, Enum.EasingStyle.Sine,Enum.EasingDirection.Out, 0, false, 0)
        		local tween = TweenService:Create(HumRoot, tweeninfo, goal)
        		tween:Play()
        		table.remove(backlog, 1)
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

        local Parts = game.Workspace.Fields
		
        while turnautochest do
            task.wait(10)
            for _, Object in next, Parts:GetChildren() do
  				for b, Object1 in next, Object:GetChildren() do
                	if Object1.Name == "Mud" then
                    	HumRoot.CFrame = Object1.Mud.CFrame
					end	
				end	
            end
		

	    end
	end    
)

Autofarm:Cheat(
	"Checkbox", -- Type
	"Autofarm Red Flowers(only daisy)", -- Name
	function(State9) -- Callback function
		turnautored = State9
	    local Players = game.Players
        local Player = Players.LocalPlayer

        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumRoot = Character:WaitForChild("HumanoidRootPart")

        local Parts = game.Workspace.Fields.Field6.FieldBlocks
		
        while turnautored do
            task.wait(0.5)
            for _1, Object3 in next, Parts:GetChildren() do
  				for b1, Object2 in next, Object3:GetChildren() do
                	if Object2.Name == "FlowerDecal" then
                    	HumRoot.CFrame = Object3.CFrame
					end	
				end	
            end
		

	    end
	end    
)
  
Autofarm:Cheat(
	"Checkbox", -- Type
	"Autofarm all flowers", -- Name
	function(Stateblya) -- Callback function
		turnautoflowers = Stateblya
	    local Players = game.Players
        local Player = Players.LocalPlayer

        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumRoot = Character:WaitForChild("HumanoidRootPart")

        local Parts = game.Workspace.Fields
		
        while turnautoflowers do
            task.wait(0.5)
            for _, Object in next, Parts:GetChildren() do
  				for _1, Object1 in next, Object:GetChildren() do
                    for _2, Object2 in next, Object1:GetChildren() do
                        for _3, Object3 in next, Object2:GetChildren() do
                	        if Object3.Name == "FlowerDecal" then
                    	        HumRoot.CFrame = Object2.CFrame
                            end
                        end        
                           
                    end	
				end	
            end
		

	    end
	end    
)

Autofarm:Cheat(
	"Checkbox", -- Type
	"Autofarm Gun Boosts", -- Name
	function(State10) -- Callback function
		turnautogunboost = State10
	    local Players = game.Players
        local Player = Players.LocalPlayer

        local Character = Player.Character or Player.CharacterAdded:Wait()
        local HumRoot = Character:WaitForChild("HumanoidRootPart")

        local Parts = game.Workspace
		
        while turnautogunboost do
                        task.wait(1)
			for _, Object in next, Parts:GetChildren() do
  
                if string.match(Object.Name, "GunBoost") then
                    Object.CFrame = HumRoot.CFrame
                end
            end
            
        
		

	    end
	end    
)


Autofarm:Cheat(
	"Checkbox", -- Type
	"Autofarm vase1", -- Name
	function(State13) -- Callback function
		turnautovase = State13
		local Players = game.Players
		local Player = Players.LocalPlayer
		local Character = Player.Character or Player.CharacterAdded:Wait()
		local HumRoot = Character:WaitForChild("HumanoidRootPart")
		Parts = game.Workspace.Pots
		while turnautovase do
    		task.wait(0.5)
			for _, Object in next, Parts:GetChildren() do
  	    		if Object.MainPart ~= nil then
					HumRoot.CFrame = Object.MainPart.CFrame
					task.wait(1)
  	    			fireclickdetector(Object.MainPart.ClickDetector)
  	    			repeat
  	        			task.wait(0.5)
        			until Object.Parent == nil 		
    		end    
		end

	end    
)

AutoTp:Cheat(
	"Checkbox", -- Type
	"СБОР ВСЕГО 2.0", -- Name
	function(State_all) -- Callback function
	turnautocollectall = State_all
	local TweenService = game:GetService("TweenService")
		local Players = game.Players
		local Player = Players.LocalPlayer
		local Character = Player.Character or Player.CharacterAdded:Wait()
		local HumRoot = Character:WaitForChild("HumanoidRootPart")
		local workspace = game:GetService("Workspace")
		local Parts = game.Workspace.Tokens.Local
		local backlog = {}
		while turnautobones do
    		Parts.ChildAdded:Connect(function(child)
        		if child.Name == "Bone" or "Coin" then
            		table.insert(backlog, child)
        		end
    		end)
    		while true do
        		local object = backlog[1]
        		if not object then
            		Parts.ChildAdded:Wait()
            		continue
        		end
        		goal = {CFrame = object.CFrame}
        		local tweeninfo = TweenInfo.new(0.1, Enum.EasingStyle.Sine,Enum.EasingDirection.Out, 0, false, 0)
        		local tween = TweenService:Create(HumRoot, tweeninfo, goal)
        		tween:Play()
        		table.remove(backlog, 1)
        	end
		end
	end
)

AutoTp:Cheat(
	"Checkbox", -- Type
	"auto bubbles", -- Name
	function(State_bubbles) -- Callback function
	turnautobubbles = State_bubbles
	local TweenService = game:GetService("TweenService")
		local Players = game.Players
		local Player = Players.LocalPlayer
		local Character = Player.Character or Player.CharacterAdded:Wait()
		local HumRoot = Character:WaitForChild("HumanoidRootPart")
		local workspace = game:GetService("Workspace")
		local Parts = game.Workspace.Hits
		local backlog = {}
		while turnautobubbles do
    		Parts.ChildAdded:Connect(function(child)
        		if child.Name == "Bubble" then
            		table.insert(backlog, child)
        		end
    		end)
    		while true do
        		local object = backlog[1]
        		if not object then
            		Parts.ChildAdded:Wait()
            		continue
        		end
        		goal = {CFrame = object.CFrame}
        		local tweeninfo = TweenInfo.new(0.1, Enum.EasingStyle.Sine,Enum.EasingDirection.Out, 0, false, 0)
        		local tween = TweenService:Create(HumRoot, tweeninfo, goal)
        		tween:Play()
        		table.remove(backlog, 1)
                        repeat
                            task.wait(0.01)
                        until object.Parent == nil
        	end
		end
	end
)
