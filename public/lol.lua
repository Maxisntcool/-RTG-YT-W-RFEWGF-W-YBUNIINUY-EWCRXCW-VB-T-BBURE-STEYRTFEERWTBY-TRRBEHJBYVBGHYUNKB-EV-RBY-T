local plr = game:GetService("Players").LocalPlayer
local char    = plr.Character
function LoadLibrary(a)
	return loadstring(game:HttpGet("https://pastebin.com/raw/UfzKgS6T", true))()
end
--char.Head.Mesh:Destroy()
for i,v in pairs(workspace:GetDescendants()) do
    if v:IsA("Model") and v.Name == plr.Name then
         charthing = v
        end
    end

char.Archivable = true

fakechar = char:Clone() fakechar.Parent = workspace fakechar.Name = "fake"

settings().Physics.AllowSleep = false
for i, v in pairs(charthing:GetDescendants()) do
	if v:IsA("Motor6D") and v.Name ~= "Neck" and v.Name ~= "RootJoint" then
		v:Destroy()
	end
end

charthing.Humanoid.PlatformStand = true

function ass()
	settings().Physics.AllowSleep = false
	setsimulationradius(math.huge*math.huge)
	for i, v in pairs(charthing:GetDescendants()) do

		if v:IsA("BasePart") and v.CanCollide == true then
			v.CanCollide = false
		end
	end
end
game:GetService('RunService').Stepped:Connect(ass)

game:GetService('RunService').Heartbeat:connect(function()
	for i, v in pairs(charthing:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Velocity = Vector3.new(0,0,100)
		end
	end
	if char.Humanoid.RigType==Enum.HumanoidRigType.R6 then
		charthing.HumanoidRootPart.CFrame = fakechar["Torso"].CFrame
		charthing["Right Arm"].CFrame = fakechar["Right Arm"].CFrame
		charthing["Left Arm"].CFrame = fakechar["Left Arm"].CFrame
		charthing["Right Leg"].CFrame = fakechar["Right Leg"].CFrame
		charthing["Left Leg"].CFrame = fakechar["Left Leg"].CFrame
	end
	if char.Humanoid.RigType==Enum.HumanoidRigType.R15 then
		charthing.HumanoidRootPart.CFrame = fakechar["UpperTorso"].CFrame
		charthing["UpperTorso"].CFrame = fakechar["UpperTorso"].CFrame
		charthing["LowerTorso"].CFrame = fakechar["LowerTorso"].CFrame
		charthing["LeftFoot"].CFrame = fakechar["LeftFoot"].CFrame
		charthing["LeftHand"].CFrame = fakechar["LeftHand"].CFrame
		charthing["LeftLowerArm"].CFrame = fakechar["LeftLowerArm"].CFrame
		charthing["LeftLowerLeg"].CFrame = fakechar["LeftLowerLeg"].CFrame
		charthing["LeftUpperArm"].CFrame = fakechar["LeftUpperArm"].CFrame
		charthing["LeftUpperLeg"].CFrame = fakechar["LeftUpperLeg"].CFrame
		charthing["LowerTorso"].CFrame = fakechar["LowerTorso"].CFrame
		charthing["RightFoot"].CFrame = fakechar["RightFoot"].CFrame
		charthing["RightHand"].CFrame = fakechar["RightHand"].CFrame
		charthing["RightLowerArm"].CFrame = fakechar["RightLowerArm"].CFrame
		charthing["RightLowerLeg"].CFrame = fakechar["RightLowerLeg"].CFrame
		charthing["RightUpperArm"].CFrame = fakechar["RightUpperArm"].CFrame
		charthing["RightUpperLeg"].CFrame = fakechar["RightUpperLeg"].CFrame
		charthing["Head"].CFrame = fakechar["Head"].CFrame

	end

end)

plr.Character = fakechar
for i,v in pairs(plr.Character:GetDescendants()) do
if v:IsA("BasePart") then
    v.Transparency = 1
    
end
end
workspace.Camera.CameraSubject = fakechar.Humanoid

local ORIGCF=CFrame.new
local math=setmetatable({random=function(Arg1,Arg2,DIV) DIV=DIV or 1 return math.random(Arg1*DIV,Arg2*DIV)/DIV end;CosSin=function(Arg) return (math.sin(Arg/2)*math.cos(Arg/2)) end;},{__index=math;})
local CFrame=setmetatable({new=function(Arg1,Arg2,Arg3,Angles) if not Angles then return CFrame.new(Arg1,Arg2,Arg3) else return CFrame.Angles(math.rad(Arg1),math.rad(Arg2),math.rad(Arg3)) end end;},{__index=CFrame;})
local Instance=setmetatable({new = function(type,args) local instance = Instance.new(type) pcall(function() if args then if string.lower(typeof(args)) == "instance" then instance.Parent = args elseif string.lower(typeof(args)) == "table" then for i,v in pairs(args) do pcall(function() instance[i] = v end) end end end end) return instance end;Remove=function(Instance_,Time) if string.lower(typeof(Instance_))=="instance" then game:GetService("Debris"):AddItem(Instance_,Time or 0) elseif string.lower(typeof(Instance_))=="table" then table.foreach(Instance_,function(_,v) game:GetService("Debris"):AddItem(v,Time or 0) end) end end},{__index=Instance;})

--}{		Default Functions	   }{--
local sitting = false
local ins=Instance.new
local v3=Vector3.new
local v2=Vector2.new
local cf=CFrame.new
local angles=CFrame.Angles
local ud=UDim.new
local ud2=UDim2.new
local c3=Color3.new
local rgb=Color3.fromRGB
local hsv=Color3.fromHSV
local bc=BrickColor.new
local bcRandom=BrickColor.Random
local palette=BrickColor.palatte
local cs=ColorSequence.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local nr=NumberRange.new
local random=math.random
local rad=math.rad
local sin=math.sin
local cos=math.cos
local tan=math.tan
local CosSin=math.CosSin
local floor=math.floor
local pi=math.floor
local abs=math.abs
local sqrt=math.sqrt
local clamp=math.clamp
local ray=Ray.new
local huge=math.huge
--}{		Useful Functions	   }{--
function Tween(Object,Args,Info)
	if Object and Args then
		Info = Info or TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0)
		if typeof(Info) == "table" then Info = TweenInfo.new(unpack(Info)) end
		game:GetService("TweenService"):Create(Object,Info,Args):Play()
	end
end
function Sound(Id,Volume,Pitch,Parent,MaxDistance,EmitterSize,Looped)
	local S=ins("Sound",{Volume=Volume or 1;Pitch=Pitch or 1;MaxDistance=MaxDistance or 500;EmitterSize=EmitterSize or 5;Looped=Looped or false;SoundId="rbxassetid://"..Id,Parent=Parent})
	S:Play()
	coroutine.wrap(function()
		if S.Looped then return end
		if S.IsLoaded then
			Instance.Remove(S,S.TimeLength/S.Pitch)
		else
			S.Loaded:Connect(function()
				Instance.Remove(S,S.TimeLength/S.Pitch)
			end)
		end
	end)()
	return S
end
function Raycast(Origin,Direction,Blacklist,MaxDistance,IgnoreWater)
	return workspace:FindPartOnRayWithIgnoreList(ray(Origin,Direction.Unit*MaxDistance),Blacklist or {},false,IgnoreWater)
end
--}{			Character		   }{--
Player = game.Players.LocalPlayer
Mouse = Player:GetMouse()
local running = false
Mouse.KeyDown:connect(function (key) -- Run function
	key = string.lower(key)
	if string.byte(key) == 48 then
		running = true
		local keyConnection = Mouse.KeyUp:connect(function (key)
			if string.byte(key) == 48 then
				running = false
			end
		end)
		for i = 1,5 do
			game.Workspace.CurrentCamera.FieldOfView = (70+(i*2))
			wait()
		end
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed +20 
		repeat wait () until running == false
		keyConnection:disconnect()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed -20
		for i = 1,5 do
			game.Workspace.CurrentCamera.FieldOfView = (80-(i*2))
			wait()
		end
	end
end)
local char=Player.Character
local hum=char:FindFirstChildOfClass("Humanoid")
local h=char.Head
local t=char.Torso
local hrp=char.HumanoidRootPart
local ra=char["Right Arm"]
local la=char["Left Arm"]
local rl=char["Right Leg"]
local ll=char["Left Leg"]
local nec=t.Neck
local rutj=hrp.RootJoint
local rs=t["Right Shoulder"]
local ls=t["Left Shoulder"]
local rh=t["Right Hip"]
local lh=t["Left Hip"]
local Bullets=ins("Model",{Name="Bullets";Parent=char;})
--}{		Character Funtions		}{--
local Hats={}
local Clothes={}
table.foreach(char:GetChildren(),function(_,v) if v:IsA("Accessory") or v:IsA("Hat") then table.insert(Hats,v) elseif v:IsA("Shirt") then Clothes.Shirt=v elseif v:IsA("Pants") then Clothes.Pants=v end end)
Hats.RemoveAll=function()
	for i,v in pairs(Hats) do
		Instance.Remove(v)
	end
end
Clothes.RemoveAll=function()
	for i,v in pairs(Hats) do
		Instance.Remove(v)
	end
end
--}{			Stopping	   }{--
for i,v in pairs(char:GetDescendants()) do
	if (v.Name=="Animate" and v:IsA("LocalScript")) or v:IsA("Animator") then
		Instance.Remove(v)
	end
end
--}{			Modules		   }{--
--           Modules Setup            --
--}{			Variables		   }{--
local Using=false
local Holding=false
local Muted=false
local TimePos=0
local Sine=0
local Change=1
local Pool=0
-- game.Players.LocalPlayer.Character.Head.Transparency = 1
-- game.Players.LocalPlayer.Character.Head:FindFirstChild("face"):Destroy()
game.Players.LocalPlayer.Character.Head:Destroy()
local WS,JP=16,50
local Step="R"
--}{			Other Values	   }{--
local necC0,necC1=cf(0,t.Size.Y/2,0),cf(0,-h.Size.Y/2,0)
local rutjC0,rutjC1=cf(0,0,0),cf(0,0,0)
local rsC0,rsC1=cf(t.Size.X/2,t.Size.Y/4,0),cf(-ra.Size.X/2,ra.Size.Y/4,0)
local lsC0,lsC1=cf(-t.Size.X/2,t.Size.Y/4,0),cf(la.Size.X/2,la.Size.Y/4,0)
local rhC0,rhC1=cf(t.Size.X/4,-t.Size.Y/2,0),cf(0,rl.Size.Y/2,0)
local lhC0,lhC1=cf(-t.Size.X/4,-t.Size.Y/2,0),cf(0,ll.Size.Y/2,0)
local StepSounds={
	Plastic=2812418291;
	SmoothPlastic=2812418291;
	Neon=2812418291;
	ForceField=2812418291;
	Metal=2812417769;
	DiamondPlate=2812417769;
	CorrodedMetal=2812417769;
	Foil=2812417769;
	Sand=619188333;
	Grass=619188333;
	Slate=941640049;
	Concrete=941640049;
	Granite=941640049;
	Pebble=941640049;
	Marble=941640049;
	Cobblestone=941640049;
	Brick=941640049;
	Water=685857471;
	Wood=2812419402;
	WoodPlanks=2812419402;
	Fabric=133705377;
	Snow=619083295;
}
local ragdollJoints = {
	["R6"] = {
		["Neck"] = {
			["Att0Rotation"] = v3(0,-90,90),
			["Att1Rotation"] = v3(0,-90,90),
			["Position0"] = v3(0,.5,0),
			["Position1"] = v3(0,-.5,0),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 90,
				TwistLowerAngle = -90,
				TwistUpperAngle = 90
			}
		},
		["Right Shoulder"] = {
			["Att0Rotation"] = v3(0,0,0),
			["Att1Rotation"] = v3(0,0,-90),
			["Position0"] = v3(.75,.333,0),
			["Position1"] = v3(0,.333,0),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 165,
				TwistLowerAngle = -135,
				TwistUpperAngle = 135
			}
		},
		["Left Shoulder"] = {
			["Att0Rotation"] = v3(0,0,0),
			["Att1Rotation"] = v3(0,0,90),
			["Position0"] = v3(-.75,.333,0),
			["Position1"] = v3(0,.333,0),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 165,
				TwistLowerAngle = -135,
				TwistUpperAngle = 135
			}
		},
		["Right Hip"] = {
			["Att0Rotation"] = v3(0,-90,-90),
			["Att1Rotation"] = v3(0,-90,-90),
			["Position0"] = v3(.25,-.5,0),
			["Position1"] = v3(0,.5,0),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 100,
				TwistLowerAngle = -45,
				TwistUpperAngle = 45
			}
		},
		["Left Hip"] = {
			["Att0Rotation"] = v3(0,-90,-90),
			["Att1Rotation"] = v3(0,-90,-90),
			["Position0"] = v3(-.25,-.5,0),
			["Position1"] = v3(0,.5,0),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 100,
				TwistLowerAngle = -45,
				TwistUpperAngle = 45
			}
		}
	},
	["R15"] = {
		["Neck"] = {
			["Att0Rotation"] = v3(0,-90,90),
			["Att1Rotation"] = v3(0,-90,90),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 80,
				TwistLowerAngle = -75,
				TwistUpperAngle = 75
			}
		},
		["Waist"] = {
			["Att0Rotation"] = v3(0,-90,90),
			["Att1Rotation"] = v3(0,-90,90),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 25,
				TwistLowerAngle = -30,
				TwistUpperAngle = 30
			}
		},
		["RightShoulder"] = {
			["Att0Rotation"] = v3(0,0,0),
			["Att1Rotation"] = v3(0,0,-90),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 105,
				TwistLowerAngle = -115,
				TwistUpperAngle = 115
			}
		},
		["LeftShoulder"] = {
			["Att0Rotation"] = v3(0,0,0),
			["Att1Rotation"] = v3(0,0,90),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 105,
				TwistLowerAngle = -115,
				TwistUpperAngle = 115
			}
		},
		["RightHip"] = {
			["Att0Rotation"] = v3(0,-90,-90),
			["Att1Rotation"] = v3(0,-90,-90),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 80,
				TwistLowerAngle = -35,
				TwistUpperAngle = 35
			}
		},
		["LeftHip"] = {
			["Att0Rotation"] = v3(0,-90,-90),
			["Att1Rotation"] = v3(0,-90,-90),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 80,
				TwistLowerAngle = -35,
				TwistUpperAngle = 35
			}
		},
		["RightElbow"] = {
			["Att0Rotation"] = v3(0,0,0),
			["Att1Rotation"] = v3(0,0,0),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 0,
				TwistLowerAngle = 105,
				TwistUpperAngle = 0
			}
		},
		["LeftElbow"] = {
			["Att0Rotation"] = v3(0,0,0),
			["Att1Rotation"] = v3(0,0,0),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 0,
				TwistLowerAngle = 105,
				TwistUpperAngle = 0
			}
		},
		["RightKnee"] = {
			["Att0Rotation"] = v3(0,0,0),
			["Att1Rotation"] = v3(0,0,0),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 0,
				TwistLowerAngle = 0,
				TwistUpperAngle = -105
			}
		},
		["LeftKnee"] = {
			["Att0Rotation"] = v3(0,0,0),
			["Att1Rotation"] = v3(0,0,0),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 0,
				TwistLowerAngle = 0,
				TwistUpperAngle = -105
			}
		},
		["RightWrist"] = {
			["Att0Rotation"] = v3(0,-90,-90),
			["Att1Rotation"] = v3(0,-90,-90),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 10,
				TwistLowerAngle = -35,
				TwistUpperAngle = 35
			}
		},
		["LeftWrist"] = {
			["Att0Rotation"] = v3(0,-90,-90),
			["Att1Rotation"] = v3(0,-90,-90),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 10,
				TwistLowerAngle = -35,
				TwistUpperAngle = 35
			}
		},
		["RightAnkle"] = {
			["Att0Rotation"] = v3(0,-90,-90),
			["Att1Rotation"] = v3(0,-90,-90),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 10,
				TwistLowerAngle = -35,
				TwistUpperAngle = 35
			}
		},
		["LeftAnkle"] = {
			["Att0Rotation"] = v3(0,-90,-90),
			["Att1Rotation"] = v3(0,-90,-90),
			["BallSocketProps"] = {
				LimitsEnabled = true,
				TwistLimitsEnabled = true,
				UpperAngle = 10,
				TwistLowerAngle = -35,
				TwistUpperAngle = 35
			}
		}
	}
}

--}{			Creates			   }{--
Instance.Remove({nec;rutj;rs;ls;rh;lh})
ins("ForceField",{Visible=false;Parent=char})
nec=ins("Motor6D",{Name="Neck";Part0=t;Part1=h;C0=necC0;C1=necC1;Parent=t;})
rutj=ins("Motor6D",{Name="RootJoint";Part0=hrp;Part1=t;C0=rutjC0;C1=rutjC1;Parent=hrp;})
rs=ins("Motor6D",{Name="Right Shoulder";Part0=t;Part1=ra;C0=rsC0;C1=rsC1;Parent=t;})
ls=ins("Motor6D",{Name="Left Shoulder";Part0=t;Part1=la;C0=lsC0;C1=lsC1;Parent=t;})
rh=ins("Motor6D",{Name="Right Hip";Part0=t;Part1=rl;C0=rhC0;C1=rhC1;Parent=t;})
lh=ins("Motor6D",{Name="Left Hip";Part0=t;Part1=ll;C0=lhC0;C1=lhC1;Parent=t;})
local Theme=ins("Sound",{SoundId="rbxassetid://1033438052";Volume=1;Pitch=1;Looped=true;Name="Theme";Parent=t;})
Theme:Play()
local Gun=ins("Part",{Size=v3(0,0,0);CanCollide=false;Anchored=false;Massless=false;Locked=true;Name="none of your business";Color=bc("Really black").Color;Parent=ra;})
local Mesh=ins("SpecialMesh",{MeshType="FileMesh";MeshId="rbxassetid://3798133326";Offset=v3(0,0,-.3);Parent=Gun;})
local HandleWeld=ins("Weld",{Part0=ra;Part1=Gun;C0=cf(-.2,-.7,-.2)*cf(-90,0,0,true);C1=cf(2.5,-2.5,-1.25,true);Parent=ra;})
local BulletRemote=ins("RemoteEvent",{Name="BulletEvent",Parent=char})
hum.WalkSpeed=WS
--}{			Functions		   }{--
function kill(who,kill_)
	if who and not who:FindFirstChild("urdedxdxdxddxdxdxxddxd") then
		if kill_ then
			ins("StringValue",{Name = "urdedxdxdxddxdxdxxddxd",Parent = who})
		else
			ins("StringValue",{Name = "urstunnddxdxdxddxdxdxxddxd",Parent = who})
		end
		local head
		local human = who:FindFirstChildOfClass("Humanoid")
		if human then
			human.PlatformStand = true
		end
		if kill_ then
			for i,v in pairs(who:GetDescendants()) do
				if v.Name == "RagdollHB" then
					Instance.Remove(v)
				end
			end
		end
		for i,v in pairs(who:GetDescendants()) do
			if v:IsA("Motor6D") or v:IsA("Weld") then
				for _,r in pairs(ragdollJoints) do
					for w,j in pairs(r) do
						if v.Name == w then
							local att0 = ins("Attachment",{Position = v.C0.Position,Orientation = j["Att0Rotation"],Parent = v.Part0})
							local att1 = ins("Attachment",{Position = v.C1.Position,Orientation = j["Att1Rotation"],Parent = v.Part1})
							if j["Position0"] then
								att0.Position = v.Part0.Size * j["Position0"]
							end
							if j["Position1"] then
								att1.Position = v.Part1.Size * j["Position1"]
								if not kill_ then
									local p = ins("Part",{Name = "RagdollHB",Locked = true,Massless = true,Anchored = false,CanCollide = true,Transparency = 1,Size = v.Part1.Size * v3(.75,.75,.75),Parent = v.Part1})
									local w=ins("Weld",{Parent=v.Part1;Part0=v.Part1;Part1=p;})
									if string.find(v.Part1.Name,"Arm") or string.find(v.Part1.Name,"Leg") then
										w.C0 = cf(0,(-v.Part1.Size.Y/2) + p.Size.Y/2,0)
									end
								end
							else
								if not kill_ then
									local p = ins("Part",{Name = "RagdollHB",Locked = true,Massless = true,Anchored = false,CanCollide = true,Transparency = 1,Size = v.Part1.Size * v3(.5,.3,.5),Parent = v.Part1})
									local w=ins("Weld",{Parent=v.Part1;Part0=v.Part1;Part1=p;})
								elseif v.Part1.Name == "Head" then
									local p = ins("Part",{Name = "RagdollHB",Locked = true,Massless = true,Anchored = false,CanCollide = true,Transparency = 1,Size = v.Part1.Size * v3(.5,.3,.5),Parent = v.Part1})
									local w=ins("Weld",{Parent=v.Part1;Part0=v.Part1;Part1=p;})
								end
							end
							ins("NoCollisionConstraint",{Part0 = v.Part0,Part1 = v.Part1,Parent = v.Part0})
							local socket = ins("BallSocketConstraint",{Attachment0 = att0,Attachment1 = att1,Name = w,Parent = att0})
							for i,v in pairs(j["BallSocketProps"]) do
								socket[i] = v
							end
							Instance.Remove(v)
						end
					end
				end
			elseif v.Name == "HumanoidRootPart" then
				Instance.Remove(v)
			end
			if v:IsA("BasePart") and v.Name ~= "RagdollHB" then
				v.Anchored = false
				v.TopSurface,v.BottomSurface = 10,10
				v.CanCollide = false
				if kill_ then
					Instance.Remove(v,6.5)
				end
				if v.Name == "Head" then
					head = v
				end
			elseif v:IsA("Decal") then
				if kill_ then
					Instance.Remove(v,6.5)
				end
			end
		end
		if kill_ then
			Instance.Remove(who,10)
		end
		if human then
			if kill_ then
				human.BreakJointsOnDeath = false
				human.Health = 0
			end
			human.PlatformStand = true
		end
		return head
	end
end
local function CreateBullet(Pos,Direction,Damage)
	local Bullet=ins("Part",{Locked=true;CanCollide=false;Massless=true;Name="Bullet";Transparency=1;CFrame=ORIGCF(Pos.Position,Direction);Size=v3(0,0,0);Parent=Bullets;})
	local Att0=ins("Attachment",{Parent=Bullet;Position=v3(0,.5,0)})
	local Att1=ins("Attachment",{Parent=Bullet;Position=v3(0,-.5,0)})
	local Trail=ins("Trail",{Texture="rbxassetid://3472578683";LightEmission=1;Lifetime=.15;Transparency=NumberSequence.new(0,1);FaceCamera=true;Attachment0=Att0;Attachment1=Att1;Parent=Bullet;})
	ins("NumberValue",{Name="Damage";Value=Damage;Parent=Bullet;})
	pcall(function()
		Bullet:SetNetworkOwner(Player)
	end)
	Instance.Remove(Bullet,5)
end
function Shoot()
	Pool=25
	Sound(2757012511,1.5,random(.9,1.1,100),Gun,100,5)
	CreateBullet(ra.CFrame*cf(-.2,-1.3,-.35),Mouse.Hit.Position,15)
	rs.C1=rsC1*cf(-35,0,0,true)*cf(0,-.1,0)
end
--}{			Connections		   }{-- 
UIS = game:GetService("UserInputService")

UIS.InputBegan:connect(function(io,gpe)
	if(gpe)then return end
	--MODES
	if(io.KeyCode == Enum.KeyCode.M)then 	

		Muted=not Muted


		
	end
	if(io.KeyCode == Enum.KeyCode.Z)then 	

		sitting=not sitting



	end
	if(io.UserInputType==Enum.UserInputType.MouseButton1)then
		Shoot()
	end
end)
coroutine.wrap(function()
	while wait(1/5) do
		if Holding then
			Shoot()
		end
	end
end)()
wait(.1)

game:GetService("RunService").Stepped:Connect(function()
	Pool=clamp(Pool-1,0,25)
	if Pool==0 then
		Using=false
	else
		Using=true
	end
	if Theme.Parent~=t then
		Instance.Remove(Theme)
		Theme=ins("Sound",{SoundId="rbxassetid://213693358";TimePosition=TimePos;Volume=1;Pitch=.935;Looped=true;Parent=t;})
	end
	if not Bullets or Bullets.Parent~=char then
		Instance.Remove(Bullets)
		Bullets=ins("Model",{Name="Bullets";Parent=char;})
	end
	Theme.Pitch=1
	Theme.Name="Theme"
	if not Muted then
		Theme.Volume=.45
	else
		Theme.Volume=0
	end
	Theme.SoundId="rbxassetid://1033438052"
	Theme:Resume()
	TimePos=Theme.TimePosition
	Sine=Sine+Change
	local Direction=hum.MoveDirection
	if Direction.Magnitude==0 then Direction=hrp.Velocity/7.5 end;
	local MoveZ=clamp((Direction*hrp.CFrame.LookVector).X+(Direction*hrp.CFrame.LookVector).Z,-1,1)
	local MoveX=clamp((Direction*hrp.CFrame.RightVector).X+(Direction*hrp.CFrame.RightVector).Z,-1,1)
	local Moving=(hrp.Velocity*v3(1,0,1)).Magnitude>1
	local VerY=hrp.Velocity.Y
	local StandR,RPos,RNID=Raycast(t.CFrame*cf(t.Size.X/4,-t.Size.Y/2,0).Position,-hrp.CFrame.UpVector,{char},3,false)
	local StandL,LPos,LNID=Raycast(t.CFrame*cf(-t.Size.X/4,-t.Size.Y/2,0).Position,-hrp.CFrame.UpVector,{char},3,false)
	local CF=cf()
	pcall(function()
		CF=(hrp.CFrame*cf(0,t.Size.Y/2+h.Size.Y/2,0)):ToObjectSpace(cf((hrp.CFrame*cf(0,t.Size.Y/2+h.Size.Y/2,0)).Position,Mouse.Hit.Position))
	end)
	hum.JumpPower=JP
	if not Moving and (StandR or StandL) then
		local IdleVal=20
		Change=1
		nec.C0=nec.C0:Lerp(necC0*(CF-CF.Position)*cf(0,0,0)*cf(-sin(Sine/IdleVal)*3,CosSin(Sine/(IdleVal*2.5))*5,0,true)*cf(0,0,0)*cf(0,-30,0,true),.2)
		rutj.C0=rutj.C0:Lerp(rutjC0*cf(0,.05*cos(Sine/IdleVal),0)*cf(CosSin(Sine/IdleVal)*3,sin(Sine/(IdleVal*4))*5,0,true)*cf(0,0,0)*cf(0,30,0,true),.2)
		if not Using then
			rs.C0=rs.C0:Lerp(rsC0*cf(0,-.05*cos(Sine/IdleVal),0)*cf(sin(Sine/IdleVal)*5,0,0,true)*cf(-.3,-.65,.15)*cf(130,20,-10,true),.2)
		else
			rs.C0=rs.C0:Lerp(rsC0*(CF-CF.Position)*cf(0,-30,0,true)*cf(90,0,0,true),.65)
		end
		ls.C0=ls.C0:Lerp(lsC0*cf(0,-.05*cos(Sine/IdleVal),0)*cf(-sin(Sine/IdleVal)*3,0,CosSin(Sine/(IdleVal*2))*5,true)*cf(.1,-.05,0)*cf(0,-2.5,4,true),.2)
		rh.C0=rh.C0:Lerp(rhC0*cf(0,-30,0,true)*cf(0,-.05*cos(Sine/IdleVal),0)*cf((-CosSin(Sine/IdleVal)*4.5)-(sin(Sine/(IdleVal*4))*3.5),0,0,true)*cf(0,0,-.2)*cf(-5,0,2.5,true),.2)
		lh.C0=lh.C0:Lerp(lhC0*cf(0,-30,0,true)*cf(0,-.05*cos(Sine/IdleVal),0)*cf((-CosSin(Sine/IdleVal)*4.5)+(sin(Sine/(IdleVal*4))*3.5),0,0,true)*cf(0,0,0)*cf(0,35,-3,true),.2)
	elseif Moving and (StandR or StandL) then
		local WSVal=6/clamp(hum.WalkSpeed/16,.25,2)*t.Size.Y/2
		local WSMul=(1+(WSVal/4))
		Change=.875
		nec.C0=nec.C0:Lerp(necC0*cf(0,0,0)*cf(0,0,0,true)*cf(0,0,0)*cf(sin(Sine/(WSVal/2))*7.5,-sin(Sine/WSVal)*15,0,true)*angles(MoveZ/12,-MoveX/1.5,0)*(CF-CF.Position),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		rutj.C0=rutj.C0:Lerp(rutjC0*cf(0,0,0)*cf(0,0,0,true)*cf(-.5*(t.Size.Y/2)*sin(Sine/(WSVal/2))/(1+(WSVal/4))*MoveX,1.5*(t.Size.Y/2)*cos(Sine/(WSVal/2))/(1+(WSVal/4)),-.5*(t.Size.Y/2)*sin(Sine/(WSVal/2))/(1+(WSVal/4))*MoveZ)*cf(cos(Sine/(WSVal/2))*7.5*MoveZ,math.CosSin(Sine/WSVal)*20,cos(Sine/(WSVal/2))*7.5*MoveX,true)*angles((-MoveZ/7.5)*math.clamp((hum.WalkSpeed/16)/(t.Size.Y/2),.5,3.5),0,-MoveX/5),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		if not Using then
			rs.C0=rs.C0:Lerp(rsC0*cf(0,0,0)*cf(0,0,0,true)*cf(0,0,.75*(t.Size.Y/2)*sin(Sine/WSVal)/(1+(WSVal/4))*math.abs(MoveZ))*cf(7.5-sin(Sine/WSVal)*200/(1+(WSVal/4))*MoveZ,-sin(Sine/WSVal)*30,-15*MoveZ,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		else
			rs.C0=rs.C0:Lerp(rsC0*(CF-CF.Position)*cf(90,0,0,true),.65)
		end
		ls.C0=ls.C0:Lerp(lsC0*cf(0,0,0)*cf(0,0,0,true)*cf(0,0,-.75*(t.Size.Y/2)*sin(Sine/WSVal)/(1+(WSVal/4))*math.abs(MoveZ))*cf(7.5+sin(Sine/WSVal)*200/(1+(WSVal/4))*MoveZ,-sin(Sine/WSVal)*30,15*MoveZ,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		rh.C0=rh.C0:Lerp(rhC0*cf(0,0,0)*cf(0,0,0,true)*cf(0,.5*(t.Size.Y/2)*cos(Sine/WSVal),(.1-.8)*(t.Size.Y/2)*cos(Sine/WSVal))*cf(-5+math.clamp((sin(Sine/WSVal)*200/(1+(WSVal/4)))*MoveZ,-130,130),cos(Sine/WSVal)*5,(sin(Sine/WSVal)*60)*MoveX,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		lh.C0=lh.C0:Lerp(lhC0*cf(0,0,0)*cf(0,0,0,true)*cf(0,-.5*(t.Size.Y/2)*cos(Sine/WSVal),(.1+.8)*(t.Size.Y/2)*cos(Sine/WSVal))*cf(-5-math.clamp((sin(Sine/WSVal)*200/(1+(WSVal/4)))*MoveZ,-130,130),cos(Sine/WSVal)*5,-(sin(Sine/WSVal)*60)*MoveX,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		--thanks to kyu or neb.. whatever
		if cos(Sine/WSVal)/2>.2 and Step=="L" then
			Step="R"
			if StandR then
				local SoundId=StepSounds[StandR.Material.Name] or 0
				if StandR.Material=="Sand" and (StandR.Color.r>.7 and StandR.Color.g>.7 and StandR.Color.b>.7) then
					SoundId=StepSounds["Snow"]
				end
				local SizeVal=StandR.Size*RNID
				if SoundId==941640049 then
					SizeVal=SizeVal/2
				end
				Sound(SoundId,(.35*clamp((hum.WalkSpeed/16)/1.5,.5,3.5))/clamp(math.max(SizeVal.X,SizeVal.Y,SizeVal.Z),.5,1.25),random(.9,1.1,100)*clamp(math.max(SizeVal.X,SizeVal.Y,SizeVal.Z)/10,.5,1.2)*clamp((hum.WalkSpeed/16)/1.5,.5,2),t)
			end
		end
		if cos(Sine/WSVal)/2<-.2 and Step=="R" then
			Step="L"
			if StandL then
				local SoundId=StepSounds[StandL.Material.Name] or 0
				if StandL.Material==Enum.Material.Sand and (StandL.Color.r>.7 and StandL.Color.g>.7 and StandL.Color.b>.7) then
					SoundId=StepSounds["Snow"]
				end
				local SizeVal=StandL.Size*LNID
				if SoundId==941640049 then
					SizeVal=SizeVal/2
				end
				Sound(SoundId,(.35*clamp((hum.WalkSpeed/16)/1.5,.5,3.5))/clamp(math.max(SizeVal.X,SizeVal.Y,SizeVal.Z),.5,1.25),random(.9,1.1,100)*clamp(math.max(SizeVal.X,SizeVal.Y,SizeVal.Z)/2,.5,1.2)*clamp((hum.WalkSpeed/16)/1.5,.5,2),t)
			end
		end
	elseif not(StandR and StandL) then
		if sitting == false then
			
		
		Change=1
		nec.C0=nec.C0:Lerp(necC0*cf(0,0,0)*cf(0,0,0,true)*cf(0,0,0)*cf(clamp(hrp.Velocity.Y,-15,15),0,0,true)*(CF-CF.Position),.2)
		rutj.C0=rutj.C0:Lerp(rutjC0*cf(0,0,0)*cf(0,0,0,true)*cf(0,0,0)*cf(clamp(hrp.Velocity.Y,-30,20),0,0,true),.2)
		if not Using then
			rs.C0=rs.C0:Lerp(rsC0*cf(0,0,0)*cf(0,5,-7.5,true)*cf(-(clamp(hrp.Velocity.Y/20,-.45,0)),0,0)*cf((clamp(hrp.Velocity.Y*4,0,150)),0,-(clamp(hrp.Velocity.Y*4,-120,0)),true),.2)
		else
			rs.C0=rs.C0:Lerp(rsC0*(CF-CF.Position)*cf(90,0,0,true),.65)
		end
		ls.C0=ls.C0:Lerp(lsC0*cf(0,0,0)*cf(0,-5,7.5,true)*cf((clamp(hrp.Velocity.Y/20,-.45,0)),0,0)*cf((clamp(hrp.Velocity.Y*4,0,150)),0,(clamp(hrp.Velocity.Y*4,-120,0)),true),.2)
		rh.C0=rh.C0:Lerp(rhC0*cf(0,0,0)*cf(0,0,0,true)*cf(0,.4,-.35)*cf(-10,-5,5,true),.2)
		lh.C0=lh.C0:Lerp(lhC0*cf(0,0,0)*cf(clamp(-hrp.Velocity.Y,-25,35),0,0,true)*cf(0,.2,-.15)*cf(-2.5,5,-5,true),.2)
		else	
			nec.C0 = nec.C0:Lerp(necC0 * cf(0,0,0) * angles(-20,0,0,true),.2)
			rutj.C0 = rutj.C0:Lerp(rutjC0 * cf(0,1.75,0) * angles(-15,0,0,true),.2)
			rs.C0 = rs.C0:Lerp(rsC0 * cf(-.1,-.5,.15) * angles(-20,-60,10,true),.2)
			ls.C0 = ls.C0:Lerp(lsC0 * cf(0,-.25,-.2) * angles(70,-60,60,true) * angles(40,0,0,true),.2)
			rh.C0 = rh.C0:Lerp(rhC0 * cf(0,0,0) * angles(70,7.5,5,true),.2)
			lh.C0 = lh.C0:Lerp(lhC0 * cf(0,1.25,-.5) * angles(10,-10,-5,true),.2)

		end	
		end
	nec.C1=nec.C1:Lerp(necC1,.2)
	rutj.C1=rutj.C1:Lerp(rutjC1,.2)
	rs.C1=rs.C1:Lerp(rsC1,.2)
	ls.C1=ls.C1:Lerp(lsC1,.2)
	rh.C1=rh.C1:Lerp(rhC1,.2)
	lh.C1=lh.C1:Lerp(lhC1,.2)
	necC0,necC1=cf(0,t.Size.Y/2,0),cf(0,-h.Size.Y/2,0)
	rutjC0,rutjC1=cf(0,0,0),cf(0,0,0)
	rsC0,rsC1=cf(t.Size.X/2,t.Size.Y/4,0),cf(-ra.Size.X/2,ra.Size.Y/4,0)
	lsC0,lsC1=cf(-t.Size.X/2,t.Size.Y/4,0),cf(la.Size.X/2,la.Size.Y/4,0)
	rhC0,rhC1=cf(t.Size.X/4,-t.Size.Y/2,0),cf(0,rl.Size.Y/2,0)
	lhC0,lhC1=cf(-t.Size.X/4,-t.Size.Y/2,0),cf(0,ll.Size.Y/2,0)
end)
--}{			Loops		   }{--