local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "FOCUS的人机生成器",
    Text = "加载中…",
    Duration = 5, 
})
about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("您的注入器:"," "..identifyexecutor().."")
local Tab = Window:MakeTab({
  Name = "Doors Hardcore生成器",
  Icon = "rbxassetid://10983763163",
  PremiumOnly = false
  })
  Tab:AddButton({
	Name = "生成A-60",
	Callback = function()

Creator.runEntity(entity)
		end
	end
	a()
end)

local function A60spawn()
	task.spawn(function()
		local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()
		-- Create entity
		local entity = Creator.createEntity({
			Model = "12263106166",
			Speed = 350,
			DelayTime = 3,
			HeightOffset = 0.5,
			CanKill = false,
			FlickerLights = {
				false,
				4,
			},
			Cycles = {
				Min = 4,
				Max = 4,
				WaitTime = 0.05,
			},
			CamShake = {
				true,
				{30, 30, 0.1, 1},
				50,
			},
			Jumpscare = {
				false, -- Enabled ('false' if you don't want jumpscare)
				{
					Image1 = "rbxassetid://11394048190", -- Image1 url
					Image2 = "rbxassetid://11395251069", -- Image2 url
					Shake = true,
					Sound1 = {
						10483790459, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Sound2 = {
						10483837590, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Flashing = {
						true, -- Enabled
						Color3.fromRGB(255, 0, 0), -- Color
					},
					Tease = {
						true, -- Enabled ('false' if you don't want tease)
						Min = 1,
						Max = 3,
					},
				},
			},
			CustomDialog = {"You died to an enitity designated as A-60", "It can Appear at any moment, a loud scream will anounce its presence", "When you hear it spawn you must stay out of its reach as soon as possible", "It knows exactly where you are so hiding in different places will not work.."}
		})
		local spawned = true

		-----[[ Advanced ]]-----
		entity.Debug.OnEntitySpawned = function()
			print("hi")
			local function GetGitSound(GithubSnd,SoundName)
				local url=GithubSnd
				if not isfile(SoundName..".mp3") then
					writefile(SoundName..".mp3", game:HttpGet(url))
				end
				local sound=Instance.new("Sound")
				sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
				return sound
			end
			local function Kill()
				print("killering")
				-- Gui to Lua
				-- Version: 3.2

				-- Instances:

				local ScreenGui = Instance.new("ScreenGui")
				local JumpscareEnd = Instance.new("ImageLabel")
				local Full = Instance.new("ImageLabel")

				--Properties:

				ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
				ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

				JumpscareEnd.Name = "JumpscareEnd"
				JumpscareEnd.Parent = ScreenGui
				JumpscareEnd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				JumpscareEnd.BackgroundTransparency = 1.000
				JumpscareEnd.Position = UDim2.new(0.468161434, 0, 0.455128193, 0)
				JumpscareEnd.Size = UDim2.new(0.0636771321, 0, 0.0884615406, 0)
				JumpscareEnd.Image = "rbxassetid://0"
				JumpscareEnd.ImageColor3 = Color3.fromRGB(255, 0, 4)

				Full.Name = "Full"
				Full.Parent = ScreenGui
				Full.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Full.BackgroundTransparency = 1.000
				Full.Position = UDim2.new(-0.0609865487, 0, -0.224358946, 0)
				Full.Size = UDim2.new(1.12197304, 0, 1.44743586, 0)
				Full.Image = "http://www.roblox.com/asset/?id=11151804223"
				Full.ImageTransparency = 1.000

				-- Scripts:


				local function DKITLS_fake_script() -- ScreenGui.Jumpscare 
					local script = Instance.new('LocalScript', ScreenGui)

					--if not workspace:FindFirstChild("A-60") then return end
					local Gui = script.Parent
					local Plr = game.Players.LocalPlayer
					local Char = Plr.Character
					local Hum = Char:FindFirstChildOfClass("Humanoid")
					local Root = Char:FindFirstChild("HumanoidRootPart")
					local A60 = workspace:FindFirstChild("A-60")
					local Camera = workspace.CurrentCamera
					local cameraShaker = require(game.ReplicatedStorage.CameraShaker)
					local ReSt = game:GetService("ReplicatedStorage")
					local camShake = cameraShaker.new(Enum.RenderPriority.Camera.Value, function(cf)
						Camera.CFrame = Camera.CFrame * cf
					end)

					camShake:Start()
					local Jumpscaring = true
					local monster1 = A60:FindFirstChild("RushNew"):Clone()
					local function ImageChange(Part)
						spawn(function()
							while game["Run Service"].Heartbeat:Wait() do
								local get = Part.IMAGEIDS:GetChildren()
								local randome = get[math.random(1,#get)]
								Part.Main.Face.Texture = randome.Image

								wait(Random.new():NextNumber(0,0.02))

							end
						end)
					end

					monster1.Parent = Camera ImageChange(monster1) monster1.Name = "A-60_SCARE"
					for i,v in pairs(monster1:GetDescendants()) do
						if v:IsA("Sound") then 
							v:Destroy()
						end 
					end
					local EntityOffset = Vector3.new(0,-1.2,-5)
					local LerpAlpha = 0.8
					local JumpscareSound = GetGitSound("https://github.com/Noonie1/goob/blob/main/A-60jumpscare%20(1).mp3?raw=true","asixtyScareOmg") JumpscareSound.Parent = workspace
					JumpscareSound.Volume = 6
					JumpscareSound:Play()
					camShake:ShakeOnce(25,25,0,4,90,60)
					local JumpscareContrast = Instance.new("ColorCorrectionEffect",game.Lighting)
					game.TweenService:Create(JumpscareContrast,TweenInfo.new(0.5),{Brightness = 0.2,Contrast = 0.2,Saturation = -0.2,TintColor = Color3.fromRGB(255, 0, 4)}):Play()
					spawn(function()
						while Jumpscaring do game["Run Service"].RenderStepped:Wait()
							monster1.CFrame = monster1.CFrame:Lerp(Camera.CFrame*CFrame.new(EntityOffset),LerpAlpha)
						end
						game.TweenService:Create(monster1,TweenInfo.new(1),{CFrame = Camera.CFrame*CFrame.new(Vector3.new(0,-1.2,45))}):Play()
					end)
					wait(0.5) Jumpscaring = false
					Gui.JumpscareEnd.Image = monster1:FindFirstChild("Main"):FindFirstChild("Face").Texture
					game.TweenService:Create(Gui.JumpscareEnd,TweenInfo.new(0.5),{Size = Gui.Full.Size,Position = Gui.Full.Position,Rotation = math.random(-20,20)}):Play()
					game.TweenService:Create(JumpscareContrast,TweenInfo.new(10),{Brightness = 0,Contrast = 0,Saturation = 0,TintColor = Color3.fromRGB(255, 255, 255)}):Play()
					Char:FindFirstChildWhichIsA("Humanoid"):TakeDamage(100)
					DEATHMESSAGE({"You died to an enitity designated as A-60", "It can Apear at any moment, a loud scream will anounce its presence", "When you hear it spawn you must stay out of its reach as soon as possible", "It knows exactly where you are so hiding in different places will not work.."},"A-60")
					wait(0.5)
					game.TweenService:Create(Gui.JumpscareEnd,TweenInfo.new(0.5),{ImageTransparency = 1}):Play()
					game.Debris:AddItem(monster1,1)

				end
				coroutine.wrap(DKITLS_fake_script)()
				local function OUNG_fake_script() -- JumpscareEnd.Script 
					local script = Instance.new('Script', JumpscareEnd)

					while true do
						wait()
						--	script.Parent.Rotation = script.Parent.Rotation + math.random(-6,6)
						--script.Parent.Position = script.Parent.Position + UDim2.new(0,math.random(0,100),0,math.random(-150,150))
					end
				end
				coroutine.wrap(OUNG_fake_script)()

			end

			-------------------

			local A60 =   workspace:FindFirstChild("A-60"):FindFirstChild("RushNew") print(A60.Name)
			local deb = false
			local function canSeeTarget(target,size)
				if deb == true then
					return
				end
				local origin = A60.Position
				local direction = (target.HumanoidRootPart.Position - A60.Position).unit * size
				local ray = Ray.new(origin, direction)

				local hit, pos = workspace:FindPartOnRay(ray, A60)


				if hit then
					if hit:IsDescendantOf(target) then print("DIE")
						deb = true
						if workspace.Ambience_Seek.Playing == true then
							return
						end

						for i,v in pairs(A60:GetDescendants()) do
							if v:IsA("Sound") then 
								v:Destroy()
							end 
						end
						spawn(function()
							Kill()
						end)
						return true
					end
				else
					return false
				end
			end
			spawn(function()
				while entity ~= nil do wait(0.5)
					local v = game.Players.LocalPlayer
					if v.Character ~= nil and not v.Character:GetAttribute("Hiding") then

						local c = canSeeTarget(v.Character,50) 
						if c == true then 
							print("cansee")
						end
					end
				end
			end)
			spawn(function()
				local Monster = workspace:FindFirstChild("A-60")
				local Part = Monster:FindFirstChild("RushNew")
				Part.Static:Play()
				Part.Static.Pitch = 1.6
				while game["Run Service"].Heartbeat:Wait() and spawned do
					local get = Part.IMAGEIDS:GetChildren()
					local random = get[math.random(1,#get)]
					Part.Main.Face.Texture = random.Image
					wait(Random.new():NextNumber(0,0.07))
				end
			end)
		end
		local despawnsnd
		entity.Debug.OnEntityDespawned = function(entity)
			spawned = false
			local Snd = Instance.new("Sound")
			Snd.Volume = 1
			Snd.Pitch = 0.1
			Snd.SoundId = "rbxassetid://7757472223"
			Snd.Parent = workspace
			Snd.Volume = 10
			Snd:Play()
			despawnsnd = Snd
			game.Debris:AddItem(Snd,25)
			spawn(function()
				while Snd.Playing do wait(0.5)
					if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").Health == 0 then
						Snd:Destroy()
					end
				end
			end)

			local Reboundcolor = Instance.new("ColorCorrectionEffect",game.Lighting) game.Debris:AddItem(Reboundcolor,24)
			Reboundcolor.Name = "Despawn"
			Reboundcolor.TintColor = Color3.fromRGB(255, 0, 4) Reboundcolor.Saturation = -0.7 Reboundcolor.Contrast = 0.2
			game.TweenService:Create(Reboundcolor,TweenInfo.new(15),{TintColor = Color3.fromRGB(255, 255, 255),Saturation = 0, Contrast = 0}):Play()
			game.Debris:AddItem(Reboundcolor,40)
			game.TweenService:Create(Snd,TweenInfo.new(23),{Volume = 0}):Play()
			local cameraShaker = require(game.ReplicatedStorage.CameraShaker)
			local camera = workspace.CurrentCamera

			local camShake = cameraShaker.new(Enum.RenderPriority.Camera.Value, function(cf)
				camera.CFrame = camera.CFrame * cf
			end)
			camShake:Start()
			camShake:ShakeOnce(5,45,0.1,20,2,20)
			if getgenv().death == true then
				getgenv().Title = "A nostalgic fright..." --Title Here
				getgenv().Description = "Might Come back..." --Description Here
				getgenv().Reason = "Encounter and survive the rare Entity called A-60" --Reason Here
				getgenv().BadgeId = 2129311962  --Replace Number with Your Badge ID
				getgenv().Category = 10 --You can replace the Category or dont

				local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
				local Achievements = debug.getupvalue(Unlock, 1)
				for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
					v.Title = getgenv().Title
					v.Desc = getgenv().Description
					v.Reason = getgenv().Reason
					v.BadgeId = getgenv().BadgeId
					v.Category = getgenv().Category
				end
				Unlock(nil,"Join")
			end
		end

		entity.Debug.OnEntityStartMoving = function(entity)

		end

		---------------------------

		-- Run the created entity
		Creator.runEntity(entity)
	end)
end

spawn(function()
	------------------------------------------Entity A-60 basically just click execute at the same time as ur friend
	local function a()
		getgenv().death = false
		while wait(680) do
			if (workspace.Ambience_Seek.Playing) then
				a()
				return
			end
			local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()
			-- Create entity
			local entity = Creator.createEntity({
				Model = "12263106166",
				Speed = 350,
				DelayTime = 3,
				HeightOffset = 0.5,
				CanKill = false,
				FlickerLights = {
					false,
					4,
				},
				Cycles = {
					Min = 4,
					Max = 4,
					WaitTime = 0.05,
				},
				CamShake = {
					true,
					{30, 30, 0.1, 1},
					50,
				},
				Jumpscare = {
					false, -- Enabled ('false' if you don't want jumpscare)
					{
						Image1 = "rbxassetid://11394048190", -- Image1 url
						Image2 = "rbxassetid://11395251069", -- Image2 url
						Shake = true,
						Sound1 = {
							10483790459, -- SoundId
							{ Volume = 0.5 }, -- Sound properties
						},
						Sound2 = {
							10483837590, -- SoundId
							{ Volume = 0.5 }, -- Sound properties
						},
						Flashing = {
							true, -- Enabled
							Color3.fromRGB(255, 0, 0), -- Color
						},
						Tease = {
							true, -- Enabled ('false' if you don't want tease)
							Min = 1,
							Max = 3,
						},
					},
				},
				CustomDialog = {"You died to an enitity designated as A-60", "It can Appear at any moment, a loud scream will anounce its presence", "When you hear it spawn you must stay out of its reach as soon as possible", "It knows exactly where you are so hiding in different places will not work.."}
			})
			local spawned = true

			-----[[ Advanced ]]-----
			entity.Debug.OnEntitySpawned = function()
				print("hi")
				local function GetGitSound(GithubSnd,SoundName)
					local url=GithubSnd
					if not isfile(SoundName..".mp3") then
						writefile(SoundName..".mp3", game:HttpGet(url))
					end
					local sound=Instance.new("Sound")
					sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
					return sound
				end
				local function Kill()
					print("killering")
					-- Gui to Lua
					-- Version: 3.2

					-- Instances:

					local ScreenGui = Instance.new("ScreenGui")
					local JumpscareEnd = Instance.new("ImageLabel")
					local Full = Instance.new("ImageLabel")

					--Properties:

					ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
					ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

					JumpscareEnd.Name = "JumpscareEnd"
					JumpscareEnd.Parent = ScreenGui
					JumpscareEnd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					JumpscareEnd.BackgroundTransparency = 1.000
					JumpscareEnd.Position = UDim2.new(0.468161434, 0, 0.455128193, 0)
					JumpscareEnd.Size = UDim2.new(0.0636771321, 0, 0.0884615406, 0)
					JumpscareEnd.Image = "rbxassetid://0"
					JumpscareEnd.ImageColor3 = Color3.fromRGB(255, 0, 4)

					Full.Name = "Full"
					Full.Parent = ScreenGui
					Full.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Full.BackgroundTransparency = 1.000
					Full.Position = UDim2.new(-0.0609865487, 0, -0.224358946, 0)
					Full.Size = UDim2.new(1.12197304, 0, 1.44743586, 0)
					Full.Image = "http://www.roblox.com/asset/?id=11151804223"
					Full.ImageTransparency = 1.000

					-- Scripts:


					local function DKITLS_fake_script() -- ScreenGui.Jumpscare 
						local script = Instance.new('LocalScript', ScreenGui)

						--if not workspace:FindFirstChild("A-60") then return end
						local Gui = script.Parent
						local Plr = game.Players.LocalPlayer
						local Char = Plr.Character
						local Hum = Char:FindFirstChildOfClass("Humanoid")
						local Root = Char:FindFirstChild("HumanoidRootPart")
						local A60 = workspace:FindFirstChild("A-60")
						local Camera = workspace.CurrentCamera
						local cameraShaker = require(game.ReplicatedStorage.CameraShaker)
						local ReSt = game:GetService("ReplicatedStorage")
						local camShake = cameraShaker.new(Enum.RenderPriority.Camera.Value, function(cf)
							Camera.CFrame = Camera.CFrame * cf
						end)

						camShake:Start()
						local Jumpscaring = true
						local monster1 = A60:FindFirstChild("RushNew"):Clone()
						local function ImageChange(Part)
							spawn(function()
								while game["Run Service"].Heartbeat:Wait() do
									local get = Part.IMAGEIDS:GetChildren()
									local randome = get[math.random(1,#get)]
									Part.Main.Face.Texture = randome.Image

									wait(Random.new():NextNumber(0,0.02))

								end
							end)
						end

						monster1.Parent = Camera ImageChange(monster1) monster1.Name = "A-60_SCARE"
						for i,v in pairs(monster1:GetDescendants()) do
							if v:IsA("Sound") then 
								v:Destroy()
							end 
						end
						local EntityOffset = Vector3.new(0,-1.2,-5)
						local LerpAlpha = 0.8
						local JumpscareSound = GetGitSound("https://github.com/Noonie1/goob/blob/main/A-60jumpscare%20(1).mp3?raw=true","asixtyScareOmg") JumpscareSound.Parent = workspace
						JumpscareSound.Volume = 6
						JumpscareSound:Play()
						camShake:ShakeOnce(25,25,0,4,90,60)
						local JumpscareContrast = Instance.new("ColorCorrectionEffect",game.Lighting)
						game.TweenService:Create(JumpscareContrast,TweenInfo.new(0.5),{Brightness = 0.2,Contrast = 0.2,Saturation = -0.2,TintColor = Color3.fromRGB(255, 0, 4)}):Play()
						spawn(function()
							while Jumpscaring do game["Run Service"].RenderStepped:Wait()
								monster1.CFrame = monster1.CFrame:Lerp(Camera.CFrame*CFrame.new(EntityOffset),LerpAlpha)
							end
							game.TweenService:Create(monster1,TweenInfo.new(1),{CFrame = Camera.CFrame*CFrame.new(Vector3.new(0,-1.2,45))}):Play()
						end)
						wait(0.5) Jumpscaring = false
						Gui.JumpscareEnd.Image = monster1:FindFirstChild("Main"):FindFirstChild("Face").Texture
						game.TweenService:Create(Gui.JumpscareEnd,TweenInfo.new(0.5),{Size = Gui.Full.Size,Position = Gui.Full.Position,Rotation = math.random(-20,20)}):Play()
						game.TweenService:Create(JumpscareContrast,TweenInfo.new(10),{Brightness = 0,Contrast = 0,Saturation = 0,TintColor = Color3.fromRGB(255, 255, 255)}):Play()
						Char:FindFirstChildWhichIsA("Humanoid"):TakeDamage(100)
						DEATHMESSAGE({"You died to an enitity designated as A-60", "It can Apear at any moment, a loud scream will anounce its presence", "When you hear it spawn you must stay out of its reach as soon as possible", "It knows exactly where you are so hiding in different places will not work.."},"A-60")
						wait(0.5)
						game.TweenService:Create(Gui.JumpscareEnd,TweenInfo.new(0.5),{ImageTransparency = 1}):Play()
						game.Debris:AddItem(monster1,1)

					end
					coroutine.wrap(DKITLS_fake_script)()
					local function OUNG_fake_script() -- JumpscareEnd.Script 
						local script = Instance.new('Script', JumpscareEnd)

						while true do
							wait()
							--	script.Parent.Rotation = script.Parent.Rotation + math.random(-6,6)
							--script.Parent.Position = script.Parent.Position + UDim2.new(0,math.random(0,100),0,math.random(-150,150))
						end
					end
					coroutine.wrap(OUNG_fake_script)()

				end

				-------------------

				local A60 =   workspace:FindFirstChild("A-60"):FindFirstChild("RushNew") print(A60.Name)
				local deb = false
				local function canSeeTarget(target,size)
					if deb == true then
						return
					end
					local origin = A60.Position
					local direction = (target.HumanoidRootPart.Position - A60.Position).unit * size
					local ray = Ray.new(origin, direction)

					local hit, pos = workspace:FindPartOnRay(ray, A60)


					if hit then
						if hit:IsDescendantOf(target) then print("DIE")
							deb = true
							if workspace.Ambience_Seek.Playing == true then
								return
							end

							for i,v in pairs(A60:GetDescendants()) do
								if v:IsA("Sound") then 
									v:Destroy()
								end 
							end
							spawn(function()
								Kill()
							end)
							return true
						end
					else
						return false
					end
				end
				spawn(function()
					while entity ~= nil do wait(0.5)
						local v = game.Players.LocalPlayer
						if v.Character ~= nil and not v.Character:GetAttribute("Hiding") then

							local c = canSeeTarget(v.Character,50) 
							if c == true then 
								print("cansee")
							end
						end
					end
				end)
				spawn(function()
					local Monster = workspace:FindFirstChild("A-60")
					local Part = Monster:FindFirstChild("RushNew")
					Part.Static:Play()
					Part.Static.Pitch = 1.6
					while game["Run Service"].Heartbeat:Wait() and spawned do
						local get = Part.IMAGEIDS:GetChildren()
						local random = get[math.random(1,#get)]
						Part.Main.Face.Texture = random.Image
						wait(Random.new():NextNumber(0,0.07))
					end
				end)
			end
			local despawnsnd
			entity.Debug.OnEntityDespawned = function(entity)
				spawned = false
				local Snd = Instance.new("Sound")
				Snd.Volume = 1
				Snd.Pitch = 0.1
				Snd.SoundId = "rbxassetid://7757472223"
				Snd.Parent = workspace
				Snd.Volume = 10
				Snd:Play()
				despawnsnd = Snd
				game.Debris:AddItem(Snd,25)
				spawn(function()
					while Snd.Playing do wait(0.5)
						if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").Health == 0 then
							Snd:Destroy()
						end
					end
				end)

				local Reboundcolor = Instance.new("ColorCorrectionEffect",game.Lighting) game.Debris:AddItem(Reboundcolor,24)
				Reboundcolor.Name = "Despawn"
				Reboundcolor.TintColor = Color3.fromRGB(255, 0, 4) Reboundcolor.Saturation = -0.7 Reboundcolor.Contrast = 0.2
				game.TweenService:Create(Reboundcolor,TweenInfo.new(15),{TintColor = Color3.fromRGB(255, 255, 255),Saturation = 0, Contrast = 0}):Play()
				game.Debris:AddItem(Reboundcolor,40)
				game.TweenService:Create(Snd,TweenInfo.new(23),{Volume = 0}):Play()
				local cameraShaker = require(game.ReplicatedStorage.CameraShaker)
				local camera = workspace.CurrentCamera

				local camShake = cameraShaker.new(Enum.RenderPriority.Camera.Value, function(cf)
					camera.CFrame = camera.CFrame * cf
				end)
				camShake:Start()
				camShake:ShakeOnce(5,45,0.1,20,2,20)
				if getgenv().death == true then
					getgenv().Title = "A nostalgic fright..." --Title Here
					getgenv().Description = "Might Come back..." --Description Here
					getgenv().Reason = "Encounter and survive the rare Entity called A-60" --Reason Here
					getgenv().BadgeId = 2129311962  --Replace Number with Your Badge ID
					getgenv().Category = 10 --You can replace the Category or dont

					local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
					local Achievements = debug.getupvalue(Unlock, 1)
					for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
						v.Title = getgenv().Title
						v.Desc = getgenv().Description
						v.Reason = getgenv().Reason
						v.BadgeId = getgenv().BadgeId
						v.Category = getgenv().Category
					end
					Unlock(nil,"Join")
				end
			end

			entity.Debug.OnEntityStartMoving = function(entity)

			end
end
})