--[[















]]
-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Container = Instance.new("ImageLabel")
local dpl_Button = Instance.new("TextButton")
local wmi = Instance.new("TextLabel")
local tps = Instance.new("ImageLabel")
local gun_Button = Instance.new("TextButton")
local TpList = Instance.new("UIGridLayout")
local Lobby_Button = Instance.new("TextButton")
local UserInputService = game:GetService("UserInputService")
local HOT_KEY = Enum.KeyCode.RightShift

--Properties:

ScreenGui.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.379999995, 0, 0.0480000004, 0)
Main.Size = UDim2.new(0, 330, 0, 36)
Main.Image = "rbxassetid://3570695787"
Main.ImageColor3 = Color3.fromRGB(45, 45, 45)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.SliceScale = 0.120

Container.Name = "Container"
Container.Parent = Main
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.BackgroundTransparency = 1.000
Container.Position = UDim2.new(0.0454545468, 0, 0.0572519079, 0)
Container.Size = UDim2.new(0, 300, 0, 231)
Container.Visible = false
Container.Image = "rbxassetid://3570695787"
Container.ImageColor3 = Color3.fromRGB(27, 27, 27)
Container.ScaleType = Enum.ScaleType.Slice
Container.SliceCenter = Rect.new(100, 100, 100, 100)
Container.SliceScale = 0.120

dpl_Button.Name = "dpl_Button"
dpl_Button.Parent = Container
dpl_Button.BackgroundColor3 = Color3.fromRGB(77, 255, 100)
dpl_Button.Position = UDim2.new(0.353333235, 0, 0.0865800902, 0)
dpl_Button.Size = UDim2.new(0, 87, 0, 18)
dpl_Button.Font = Enum.Font.SourceSans
dpl_Button.Text = "Delete Parts Localy"
dpl_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
dpl_Button.TextSize = 11.000
dpl_Button.TextXAlignment = Enum.TextXAlignment.Left
dpl_Button.TextYAlignment = Enum.TextYAlignment.Top

wmi.Name = "wmi"
wmi.Parent = Container
wmi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
wmi.BackgroundTransparency = 1.000
wmi.Position = UDim2.new(0.166666672, 0, -0.0649350658, 0)
wmi.Size = UDim2.new(0, 200, 0, 15)
wmi.Font = Enum.Font.PermanentMarker
wmi.Text = "Devv Hub "
wmi.TextColor3 = Color3.fromRGB(0, 255, 0)
wmi.TextSize = 25.000

tps.Name = "tps"
tps.Parent = Container
tps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tps.BackgroundTransparency = 1.000
tps.Position = UDim2.new(0.043333333, 0, 0.0865800828, 0)
tps.Size = UDim2.new(0, 83, 0, 191)
tps.Image = "rbxassetid://3570695787"
tps.ImageColor3 = Color3.fromRGB(0, 0, 0)
tps.ScaleType = Enum.ScaleType.Slice
tps.SliceCenter = Rect.new(100, 100, 100, 100)
tps.SliceScale = 0.120

gun_Button.Name = "gun_Button"
gun_Button.Parent = tps
gun_Button.BackgroundColor3 = Color3.fromRGB(77, 255, 100)
gun_Button.Position = UDim2.new(0.361445606, 0, 0.0680628419, 0)
gun_Button.Size = UDim2.new(0, 52, 0, 18)
gun_Button.Font = Enum.Font.SourceSans
gun_Button.Text = "Tp to Gun"
gun_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
gun_Button.TextSize = 14.000
gun_Button.TextXAlignment = Enum.TextXAlignment.Left
gun_Button.TextYAlignment = Enum.TextYAlignment.Top

TpList.Name = "Tp List"
TpList.Parent = tps
TpList.HorizontalAlignment = Enum.HorizontalAlignment.Center
TpList.SortOrder = Enum.SortOrder.LayoutOrder
TpList.CellPadding = UDim2.new(0, 10, 0, 10)
TpList.CellSize = UDim2.new(0, 52, 0, 18)

Lobby_Button.Name = "Lobby_Button"
Lobby_Button.Parent = tps
Lobby_Button.BackgroundColor3 = Color3.fromRGB(77, 255, 100)
Lobby_Button.Position = UDim2.new(0.180999994, 0, 0.407999992, 0)
Lobby_Button.Size = UDim2.new(0, 200, 0, 50)
Lobby_Button.Font = Enum.Font.SourceSans
Lobby_Button.Text = "Tp To Lobby"
Lobby_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Lobby_Button.TextSize = 10.000
Lobby_Button.TextXAlignment = Enum.TextXAlignment.Left
Lobby_Button.TextYAlignment = Enum.TextYAlignment.Top


--code

--tweening
wait(1)
Main:TweenSize(UDim2.new(0, 330,0, 262), "In" ,"Quad", .3 , false)
wait(1)
Main:TweenPosition(UDim2.new(0.017, 0,0.037, 0), "In", "Quad", .3, false)
wait(.5)
Container.Visible=true

--mm2 main scripting part

dpl_Button.MouseButton1Down:connect(function()
	local a=Instance.new("Tool")a.RequiresHandle=false;a.Name="Delete Parts Localy"
	local b=game.Players.LocalPlayer;a.Parent=b:WaitForChild("Backpack")
	local c=b:GetMouse()
	local d=false;
	local e=Instance.new("SelectionBox")e.Color3=Color3.new(25,25,25)e.Parent=b.PlayerGui;
	local c=b:GetMouse()
	local e=Instance.new("SelectionBox")e.Color3=Color3.new(0,0.6,0.6,6)e.Parent=b.PlayerGui;e.Name="derp"c.Move:connect(function()if d then local f=c.Target;if not f then e.Adornee=nil else if f:IsA("BasePart")then e.Adornee=f else e.Adornee=nil end end end end)a.Equipped:Connect(function()d=true end)a.Unequipped:Connect(function()e.Adornee=nil;d=false end)a.Activated:Connect(function()if e.Adornee then local g=Instance.new("Explosion")g.Parent=game.Workspace;g.Position=e.Adornee.Position;g.BlastPressure=0;
	local h=Instance.new("Sound")h.SoundId="http://www.roblox.com/asset/?id=315775189"h.Parent=game.Workspace;h:Play()e.Adornee:Destroy()e.Adornee=nil end end)

	UserInputService.InputBegan:Connect(function(Input)		
		if Input.KeyCode == Enum.KeyCode.R then
			local a=Instance.new("Tool")a.RequiresHandle=false;a.Name="Delete Parts Localy"
			local b=game.Players.LocalPlayer;a.Parent=b:WaitForChild("Backpack")
			local c=b:GetMouse()
			local d=false;
			local e=Instance.new("SelectionBox")e.Color3=Color3.new(25,25,25)e.Parent=b.PlayerGui;
			local c=b:GetMouse()
			local e=Instance.new("SelectionBox")e.Color3=Color3.new(0,0.6,0.6,6)e.Parent=b.PlayerGui;e.Name="derp"c.Move:connect(function()if d then local f=c.Target;if not f then e.Adornee=nil else if f:IsA("BasePart")then e.Adornee=f else e.Adornee=nil end end end end)a.Equipped:Connect(function()d=true end)a.Unequipped:Connect(function()e.Adornee=nil;d=false end)a.Activated:Connect(function()if e.Adornee then local g=Instance.new("Explosion")g.Parent=game.Workspace;g.Position=e.Adornee.Position;g.BlastPressure=0;
			local h=Instance.new("Sound")h.SoundId="http://www.roblox.com/asset/?id=315775189"h.Parent=game.Workspace;h:Play()e.Adornee:Destroy()e.Adornee=nil end end)
		end
	end) 
end)

gun_Button.MouseButton1Down:connect(function()
 gun()
end)

Lobby_Button.MouseButton1Down:connect(function()
	lobby()
end)

UserInputService.InputBegan:Connect(function(Input, GP)
	if not GP and Input.KeyCode == HOT_KEY then
		Main.Visible = not Main.Visible 
	end
end)

function gun()
	local currentX = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
	local currentY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
	local currentZ = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z	
	if workspace:FindFirstChild("GunDrop") ~= nil then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("GunDrop").CFrame	
		wait(1.50)	
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentX, currentY, currentZ)
	end
end

function lobby()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-109.56, 140, -11.75) + Vector3.new(1, 0, 0)
end
