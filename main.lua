-- Hey! Just know, we chose to make Chlorix open source so you can learn. This does not mean you have permission to take our UI Library, nor scripts without credit.
-- If you are taking stuff like the animation player, DO NOT credit us, credit the actual owner found in the credits channel.
-- Credits for the UI and stuff goes to Garbag.
-- Reanimation edit goes to gelatek.
-- Animations go to the person that made them, tip: you can find out who made it by doing https://roblox.com/library/ID/ and check the owner name.
if game.CoreGui:FindFirstChild("ChlorixUI") then
   game.CoreGui:FindFirstChild("ChlorixUI"):Destroy()
end
_G.Prefix = "-" -- chat commands prefix
local library = {}

function library:CreateMain()
   local ChlorixUI = Instance.new("ScreenGui")
   local MainFrame = Instance.new("Frame")
   local UICorner = Instance.new("UICorner")
   local ButtonHolderFrame = Instance.new("Frame")
   local UICorner_2 = Instance.new("UICorner")
   local PenumbraShadow = Instance.new("ImageLabel")
   local ButtonHolder = Instance.new("Frame")
   local UIListLayout = Instance.new("UIListLayout")
   local PenumbraShadow_2 = Instance.new("ImageLabel")
   local allPages = Instance.new("Frame")
   local UICorner_5 = Instance.new("UICorner")
   local PenumbraShadow_3 = Instance.new("ImageLabel")
   local Button = Instance.new("TextButton")
   local UICorner_7 = Instance.new("UICorner")
   local PenumbraShadow_4 = Instance.new("ImageLabel")

   ChlorixUI.Name = "ChlorixUI"
   ChlorixUI.Parent = game.CoreGui
   ChlorixUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

   MainFrame.Name = "MainFrame"
   MainFrame.Parent = ChlorixUI
   MainFrame.BackgroundColor3 = Color3.fromRGB(55, 56, 71)
   MainFrame.Position = UDim2.new(0.0321592689, 0, 0.564774394, 0)
   MainFrame.Size = UDim2.new(0, 425, 0, 274)

   UICorner.CornerRadius = UDim.new(0, 4)
   UICorner.Parent = MainFrame

   ButtonHolderFrame.Name = "ButtonHolderFrame"
   ButtonHolderFrame.Parent = MainFrame
   ButtonHolderFrame.BackgroundColor3 = Color3.fromRGB(51, 53, 67)
   ButtonHolderFrame.Position = UDim2.new(0.0211764704, 0, 0.0474452563, 0)
   ButtonHolderFrame.Size = UDim2.new(0, 94, 0, 248)

   UICorner_2.CornerRadius = UDim.new(0, 4)
   UICorner_2.Parent = ButtonHolderFrame

   PenumbraShadow.Name = "PenumbraShadow"
   PenumbraShadow.Parent = ButtonHolderFrame
   PenumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
   PenumbraShadow.BackgroundTransparency = 1.000
   PenumbraShadow.BorderSizePixel = 0
   PenumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 1)
   PenumbraShadow.Size = UDim2.new(1, 14, 1, 15)
   PenumbraShadow.ZIndex = -1
   PenumbraShadow.Image = "rbxassetid://1316045217"
   PenumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
   PenumbraShadow.ImageTransparency = 0.800
   PenumbraShadow.ScaleType = Enum.ScaleType.Slice
   PenumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
   function dragify(Frame)
      dragToggle = nil
      dragSpeed = .25 -- You can edit this.
      dragInput = nil
      dragStart = nil
      dragPos = nil
      
      function updateInput(input)
      Delta = input.Position - dragStart
      Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
      game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
      end
      
      Frame.InputBegan:Connect(function(input)
      if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
      dragToggle = true
      dragStart = input.Position
      startPos = Frame.Position
      input.Changed:Connect(function()
      if (input.UserInputState == Enum.UserInputState.End) then
      dragToggle = false
      end
      end)
      end
      end)
      
      Frame.InputChanged:Connect(function(input)
      if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
      dragInput = input
      end
      end)
      
      game:GetService("UserInputService").InputChanged:Connect(function(input)
      if (input == dragInput and dragToggle) then
      updateInput(input)
      end
      end)
      end
   dragify(MainFrame)
   ButtonHolder.Name = "ButtonHolder"
   ButtonHolder.Parent = ButtonHolderFrame
   ButtonHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   ButtonHolder.BackgroundTransparency = 1.000
   ButtonHolder.Position = UDim2.new(0, 0, 0.0362903215, 0)
   ButtonHolder.Size = UDim2.new(0, 94, 0, 232)

   UIListLayout.Parent = ButtonHolder
   UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
   UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
   UIListLayout.Padding = UDim.new(0, 6)





   PenumbraShadow_2.Name = "PenumbraShadow"
   PenumbraShadow_2.Parent = MainFrame
   PenumbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
   PenumbraShadow_2.BackgroundTransparency = 1.000
   PenumbraShadow_2.BorderSizePixel = 0
   PenumbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 1)
   PenumbraShadow_2.Size = UDim2.new(1, 14, 1, 15)
   PenumbraShadow_2.ZIndex = -1
   PenumbraShadow_2.Image = "rbxassetid://1316045217"
   PenumbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
   PenumbraShadow_2.ImageTransparency = 0.600
   PenumbraShadow_2.ScaleType = Enum.ScaleType.Slice
   PenumbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

   allPages.Name = "allPages"
   allPages.Parent = MainFrame
   allPages.BackgroundColor3 = Color3.fromRGB(51, 53, 67)
   allPages.Position = UDim2.new(0.258823544, 0, 0.0474452563, 0)
   allPages.Size = UDim2.new(0, 307, 0, 248)

   UICorner_5.CornerRadius = UDim.new(0, 4)
   UICorner_5.Parent = allPages

   PenumbraShadow_3.Name = "PenumbraShadow"
   PenumbraShadow_3.Parent = allPages
   PenumbraShadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
   PenumbraShadow_3.BackgroundTransparency = 1.000
   PenumbraShadow_3.BorderSizePixel = 0
   PenumbraShadow_3.Position = UDim2.new(0.5, 0, 0.5, 1)
   PenumbraShadow_3.Size = UDim2.new(1, 14, 1, 15)
   PenumbraShadow_3.ZIndex = -1
   PenumbraShadow_3.Image = "rbxassetid://1316045217"
   PenumbraShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
   PenumbraShadow_3.ImageTransparency = 0.800
   PenumbraShadow_3.ScaleType = Enum.ScaleType.Slice
   PenumbraShadow_3.SliceCenter = Rect.new(10, 10, 118, 118)





   Button.Name = "Button"
   Button.Parent = newPage
   Button.BackgroundColor3 = Color3.fromRGB(69, 72, 91)
   Button.Position = UDim2.new(0.0488599353, 0, 0, 0)
   Button.Size = UDim2.new(0, 277, 0, 37)
   Button.Font = Enum.Font.SourceSansBold
   Button.TextColor3 = Color3.fromRGB(253, 253, 253)
   Button.TextSize = 18.000

   UICorner_7.CornerRadius = UDim.new(0, 4)
   UICorner_7.Parent = Button

   PenumbraShadow_4.Name = "PenumbraShadow"
   PenumbraShadow_4.Parent = Button
   PenumbraShadow_4.AnchorPoint = Vector2.new(0.5, 0.5)
   PenumbraShadow_4.BackgroundTransparency = 1.000
   PenumbraShadow_4.BorderSizePixel = 0
   PenumbraShadow_4.Position = UDim2.new(0.5, 0, 0.5, 1)
   PenumbraShadow_4.Size = UDim2.new(1, 14, 1, 15)
   PenumbraShadow_4.ZIndex = -1
   PenumbraShadow_4.Image = "rbxassetid://1316045217"
   PenumbraShadow_4.ImageColor3 = Color3.fromRGB(0, 0, 0)
   PenumbraShadow_4.ImageTransparency = 0.800
   PenumbraShadow_4.ScaleType = Enum.ScaleType.Slice
   PenumbraShadow_4.SliceCenter = Rect.new(10, 10, 118, 118)

   local tabhandler = {}

   function tabhandler:CreateTab(name)
       name = name or ":D"
       local TabButton = Instance.new("TextButton")
       local ButtonShadow = Instance.new("ImageLabel")
       local UICorner_3 = Instance.new("UICorner")
       TabButton.Name = name
       TabButton.Parent = ButtonHolder
       TabButton.BackgroundColor3 = Color3.fromRGB(51, 53, 67)
       TabButton.Position = UDim2.new(0.122340426, 0, 0, 0)
       TabButton.Size = UDim2.new(0, 82, 0, 29)
       TabButton.AutoButtonColor = false
       TabButton.Text = name
       TabButton.Font = Enum.Font.SourceSansBold
       TabButton.TextColor3 = Color3.fromRGB(253, 253, 253)
       TabButton.TextSize = 14.000
       TabButton.AutoButtonColor = false
       ButtonShadow.Name = "ButtonShadow"
       ButtonShadow.Parent = TabButton
       ButtonShadow.AnchorPoint = Vector2.new(0.5, 0.5)
       ButtonShadow.BackgroundTransparency = 1.000
       ButtonShadow.BorderSizePixel = 0
       ButtonShadow.Position = UDim2.new(0.5, 0, 0.5, 1)
       ButtonShadow.Size = UDim2.new(1, 14, 1, 15)
       ButtonShadow.ZIndex = -1
       ButtonShadow.Image = "rbxassetid://1316045217"
       ButtonShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
       ButtonShadow.ImageTransparency = 0.800
       ButtonShadow.ScaleType = Enum.ScaleType.Slice
       ButtonShadow.SliceCenter = Rect.new(10, 10, 118, 118)
       UICorner_3.CornerRadius = UDim.new(0, 2)
       UICorner_3.Parent = TabButton
       local newPage = Instance.new("ScrollingFrame")
       local UIListLayout_2 = Instance.new("UIListLayout")
       newPage.Name = "newPage"
       newPage.Parent = allPages
       newPage.Active = true
       newPage.Visible = false
       newPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
       newPage.BackgroundTransparency = 1.000
       newPage.BorderSizePixel = 0
       newPage.Position = UDim2.new(0, 0, 0.0362903215, 0)
       newPage.Size = UDim2.new(0, 307, 0, 239)
       newPage.CanvasSize = UDim2.new(0, 0, 10, 0)
       newPage.ScrollBarThickness = 4
       UIListLayout_2.Parent = newPage
       UIListLayout_2.Padding = UDim.new(0,5)
       UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
       UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
       TabButton.MouseButton1Click:Connect(function()
           for i, v in pairs(allPages:GetChildren()) do
               if v:IsA("ScrollingFrame") then    
                   v.Visible = false 
               end
           end
           newPage.Visible = true
           for i, v in pairs(ButtonHolder:GetChildren()) do
               if v:IsA("TextButton") then
                   game:GetService("TweenService"):Create(v, TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                       BackgroundColor3 = Color3.fromRGB(51, 53, 67)
                   }):Play();
               end
           end
           game:GetService("TweenService"):Create(TabButton, TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
               BackgroundColor3 = Color3.fromRGB(69, 72, 91)
           }):Play();
       end)

       local elementhandler = {}

       function elementhandler:CreateButton(name,callback)
           callback = callback or function() end
           name = name or "Button"
           local Button = Instance.new("TextButton")
           local UICorner = Instance.new("UICorner")
           local PenumbraShadow = Instance.new("ImageLabel")
           local ms = game.Players.LocalPlayer:GetMouse()
           local btn = Button
           local Sample = Instance.new("ImageLabel")
           Sample.Name = "Sample"
           Sample.Parent = nil
           Sample.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
           Sample.BackgroundTransparency = 1.000
           Sample.Image = "http://www.roblox.com/asset/?id=4560909609"
           Sample.ImageColor3 = Color3.fromRGB(89, 93, 117)
           Sample.ImageTransparency = 0.600
           local sample = Sample
           Button.Name = "Button"
           Button.AutoButtonColor = false
           Button.ClipsDescendants = true
           Button.Parent = newPage
           Button.BackgroundColor3 = Color3.fromRGB(69, 72, 91)
           Button.Position = UDim2.new(0.0488599353, 0, 0, 0)
           Button.Size = UDim2.new(0, 277, 0, 37)
           Button.Font = Enum.Font.SourceSansBold
           Button.TextColor3 = Color3.fromRGB(253, 253, 253)
           Button.TextSize = 18.000
           Button.Text = name
           Button.MouseButton1Click:Connect(function()
               spawn(function()
                   callback()
                   local c = sample:Clone()
                   c.Parent = btn
                   local x, y = (ms.X - c.AbsolutePosition.X), (ms.Y - c.AbsolutePosition.Y)
                   c.Position = UDim2.new(0, x, 0, y)
                   local len, size = 0.35, nil
                   if btn.AbsoluteSize.X >= btn.AbsoluteSize.Y then
                       size = (btn.AbsoluteSize.X * 1.5)
                   else
                       size = (btn.AbsoluteSize.Y * 1.5)
                   end
                   c:TweenSizeAndPosition(UDim2.new(0, size, 0, size), UDim2.new(0.5, (-size / 2), 0.5, (-size / 2)), 'Out', 'Quad', len, true, nil)
                   for i = 1, 10 do
                       c.ImageTransparency = c.ImageTransparency + 0.05
                       wait(len / 12)
                   end
                   c:Destroy()
               end)
           end)
           UICorner.CornerRadius = UDim.new(0, 4)
           UICorner.Parent = Button

           PenumbraShadow.Name = "PenumbraShadow"
           PenumbraShadow.Parent = Button
           PenumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
           PenumbraShadow.BackgroundTransparency = 1.000
           PenumbraShadow.BorderSizePixel = 0
           PenumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 1)
           PenumbraShadow.Size = UDim2.new(1, 14, 1, 15)
           PenumbraShadow.ZIndex = -1
           PenumbraShadow.Image = "rbxassetid://1316045217"
           PenumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
           PenumbraShadow.ImageTransparency = 0.800
           PenumbraShadow.ScaleType = Enum.ScaleType.Slice
           PenumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

           game.Players.LocalPlayer.Chatted:Connect(function(msg)
            cmd = string.gsub(name," ","")
            cmd = cmd:lower()
            if msg:lower() == _G.Prefix..cmd then
                spawn(function()
                    callback()
                end)
            end
           end)
       end
       return elementhandler
   end
   return tabhandler
end
function playid(id) -- thanks to BXFE for this :D (all credits go to them)
   _G.PlayingAnim = true
   repeat wait() until game.Players.LocalPlayer.Character.Chlorix
   animid="rbxassetid://"..tostring(id)
   plr=game.Players.LocalPlayer
   bruhmomentrighthahahahhahah=plr.Character.Chlorix
   cf=bruhmomentrighthahahahhahah.HumanoidRootPart.CFrame
   t=bruhmomentrighthahahahhahah.Torso
   rs=t["Right Shoulder"]
   ls=t["Left Shoulder"]
   rh=t["Right Hip"]
   lh=t["Left Hip"]
   n=t["Neck"]
   rj=bruhmomentrighthahahahhahah.HumanoidRootPart["RootJoint"]
   rsc0=rs.C0
   lsc0=ls.C0
   rhc0=rh.C0
   lhc0=lh.C0
   rjc0=rj.C0
   nc0=n.C0
   gc0=CFrame.new()
   orsc0=rs.C0
   olsc0=ls.C0
   orhc0=rh.C0
   olhc0=lh.C0
   orjc0=rj.C0
   onc0=n.C0
   count2 = 100
   maxcount2=100
   game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
       _G.PlayingAnim = false
   end)
   game["Run Service"].Heartbeat:Connect(function()
       count2 = count2+1
       if count2<=maxcount2 then
           rs.Transform=rs.Transform:Lerp(rsc0,count2/maxcount2)
           ls.Transform=ls.Transform:Lerp(lsc0,count2/maxcount2)
           rh.Transform=rh.Transform:Lerp(rhc0,count2/maxcount2)
           lh.Transform=lh.Transform:Lerp(lhc0,count2/maxcount2)
           n.Transform=n.Transform:Lerp(nc0,count2/maxcount2)
           rj.Transform=rj.Transform:Lerp(rjc0,count2/maxcount2)
       end
   end)
   animid=game:GetObjects(animid)[1]
   function wait2(tim)
       if tim<0.1 then
           game.RunService.Heartbeat:Wait()
           game.RunService.Heartbeat:Wait()
       else
       for i=1,tim*40 do
           game.RunService.Heartbeat:Wait()
           game.RunService.Heartbeat:Wait()
       end
       end
   end
   anim={}
   function kftotbl(kf)
       tbl3 = {}
       for i,v in pairs(kf:GetDescendants()) do
           if v:IsA("Pose") then
           tbl3[string.sub(v.Name,1,1)..string.sub(v.Name,#v.Name,#v.Name)] = v.CFrame
           end
       end
       return(tbl3)
   end
   for i,v in pairs(animid:GetChildren()) do
       if v:IsA("Keyframe") then
       anim[v.Time]=kftotbl(v)
       end
   end

   function getnext(tbl,number)
   c=100
   rtrnv=0
   for i,v in pairs(tbl) do
       if i>number and i-number<c then
           c=i-number
           rtrnv=i
       end
   end
   return(rtrnv)
   end
   count = 0
   char=game.Players.LocalPlayer.Character.Chlorix
   hhhh=game.Players.LocalPlayer.Character.Chlorix.Humanoid.Animator
   hhhh.Parent = nil
   for _,v in pairs(char.Humanoid:GetPlayingAnimationTracks()) do
       v:Stop()
   end
   while wait() do
   for i,oasjdadlasdkadkldjkl in pairs(anim) do
   asdf=getnext(anim,count)
   v=anim[asdf]
   if v["Lg"] then
       lhc0 = v["Lg"]
   end
   if v["Rg"] then
       rhc0 = v["Rg"]
   end
   if v["Lm"] then
       lsc0 = v["Lm"]
   end
   if v["Rm"] then
       rsc0 = v["Rm"]
   end
   if v["To"] then
       rjc0 = v["To"]
   end
   if v["Hd"] then
       nc0 = v["Hd"]
   end
   count2=0
   maxcount2=asdf-count
   count=asdf
   wait2(asdf-count)
   count2=maxcount2
   if v["Lg"] then
       char.Torso["Left Hip"].Transform = v["Lg"]
   end
   if v["Rg"] then
       char.Torso["Right Hip"].Transform = v["Rg"]
   end
   if v["Lm"] then
       char.Torso["Left Shoulder"].Transform = v["Lm"]
   end
   if v["Rm"] then
       char.Torso["Right Shoulder"].Transform = v["Rm"]
   end
   if v["To"] then
       char.HumanoidRootPart["RootJoint"].Transform = v["To"]
   end
   if v["Hd"] then
       char.Torso["Neck"].Transform = v["Hd"]
   end
   end
   end
end
function reanim()
   _G.Velocity = Vector3.new(37.05,0,0)
-- Creating Early Variables.
local Player = game.Players.LocalPlayer
local Character = Player.Character
local PlayerName = Player.Name
local Physics = settings().Physics
local Head = Character:FindFirstChild("Head")
local Torso = Character:FindFirstChild("Torso")
local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
local Humanoid = Character:FindFirstChild("Humanoid")
local LeftArm = Character:FindFirstChild("Left Arm")
local LeftLeg = Character:FindFirstChild("Left Leg")
local RightArm = Character:FindFirstChild("Right Arm")
local RightLeg = Character:FindFirstChild("Right Leg")
local Reanimated = true
-- R15 Check
if Humanoid.RigType == Enum.HumanoidRigType.R15 then
    game.StarterGui:SetCore("SendNotification",{
    Title = "Chlorix Reanimation",
    Text = "Reanimation supports only R6.",
    Duration = 10
}) end
if game.Players.LocalPlayer.Character:FindFirstChild("Chlorix") or workspace:FindFirstChild("Chlorix") then
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "[Chlorix] You are already reanimated! Please reset to unreanimate.",
        Color = Color3.fromRGB(255, 10, 70),
        TextSize = 18,
        Font = Enum.Font.Ubuntu
    });
else
Physics.AllowSleep = false
Physics.ThrottleAdjustTime = -9e9
Player.ReplicationFocus = workspace
Character.Archivable = true
-- Checks if player died so it doesnt run again.
game:WaitForChild("Run Service").RenderStepped:Connect(function()
if Character:FindFirstChild("Humanoid").Health == 0 then
    Reanimated = false
    wait(9e9^30)
    end
end)

-- Start reanimation
game:WaitForChild("Run Service").Heartbeat:Connect(function()
    if Reanimated == true then
        if Character.Chlorix then
            Character.Torso.CFrame=Character.Chlorix.Torso.CFrame
        end
		RightArm.Velocity = Vector3.new(-28.05,1,1)
        RightLeg.Velocity = Vector3.new(-28.05,1,1)
        LeftArm.Velocity = Vector3.new(-28.05,1,1)
        LeftLeg.Velocity = Vector3.new(-28.05,1,1)
        Torso.Velocity = Vector3.new(-28.05,1,1)
        HumanoidRootPart.Velocity = Vector3.new(-28.05,1,1)
        for _, Accessories in pairs(Character:GetDescendants()) do
            if Accessories:IsA("Accessory") then
                Accessories.Handle.Velocity = Vector3.new(-28.05,1,1)
            end
	end
	
    end
end)

local CopyCharacter = Character:Clone()
CopyCharacter.Parent = Character
CopyCharacter.Name = "Chlorix"

for k,l in pairs(Character.Chlorix:GetDescendants()) do 
    if l:IsA("Part") or l:IsA("Decal") then
    l.Transparency=1
end
end

Character.Torso["Left Shoulder"]:Destroy()
Character.Torso["Right Shoulder"]:Destroy()
Character.Torso["Left Hip"]:Destroy()
Character.Torso["Right Hip"]:Destroy()
HumanoidRootPart.RootJoint:Destroy()
--  Using Mizt's align
local CountSCIFIMOVIELOL = 1
function AlignCharacter(Part0,Part1,Position,Angle)
    local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
    AlignPos.ApplyAtCenterOfMass = true;
    AlignPos.MaxForce = 5772000--67752;
    AlignPos.MaxVelocity = math.huge/9e110;
    AlignPos.ReactionForceEnabled = false;
    AlignPos.Responsiveness = 200;
    AlignPos.RigidityEnabled = false;
    local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
    AlignOri.MaxAngularVelocity = math.huge/9e110;
    AlignOri.MaxTorque = 5772000
    AlignOri.PrimaryAxisOnly = false;
    AlignOri.ReactionTorqueEnabled = false;
    AlignOri.Responsiveness = 200;
    AlignOri.RigidityEnabled = false;
    local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "AthP_"..CountSCIFIMOVIELOL
    local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "AthP_"..CountSCIFIMOVIELOL
    local AttachmentC=Instance.new('Attachment',Part1); AttachmentC.Name = "AthO_"..CountSCIFIMOVIELOL
    local AttachmentD=Instance.new('Attachment',Part0); AttachmentD.Name = "AthO_"..CountSCIFIMOVIELOL
    AttachmentC.Orientation = Angle
    AttachmentA.Position = Position
    AlignPos.Attachment1 = AttachmentA;
    AlignPos.Attachment0 = AttachmentB;
    AlignOri.Attachment1 = AttachmentC;
    AlignOri.Attachment0 = AttachmentD;
    CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1
end

AlignCharacter(Torso,CopyCharacter["Torso"],Vector3.new(0,0,0),Vector3.new(0,0,0))
AlignCharacter(HumanoidRootPart,CopyCharacter["HumanoidRootPart"],Vector3.new(0,0,0),Vector3.new(0,0,0))
AlignCharacter(LeftArm,CopyCharacter["Left Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
AlignCharacter(RightArm,CopyCharacter["Right Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
AlignCharacter(LeftLeg,CopyCharacter["Left Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
AlignCharacter(RightLeg,CopyCharacter["Right Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
CopyCharacter:FindFirstChild("HumanoidRootPart").Anchored = false
spawn(function() 
    while true do wait()
        if Character:FindFirstChild("Humanoid").Health == 0 then 
                Character:BreakJoints()
                CopyCharacter:BreakJoints()
        end
    end 
end)


function nocol(t)
    for k,l in pairs(Character:GetDescendants()) do 
        if l:IsA("BasePart")then 
            HILOL=Instance.new("NoCollisionConstraint",l)
            HILOL.Part0=l
            HILOL.Part1=t 
        end 
    end 
end

for k,l in pairs(CopyCharacter:GetDescendants()) do
     if l:IsA("BasePart")then 
        nocol(l)
    end 
end


Torso.Anchored = true
LeftArm.Anchored = true
RightArm.Anchored = true
LeftLeg.Anchored = true
RightLeg.Anchored = true
Head.Anchored = true

for k=0,30 do wait()
    CopyCharacter.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
    CopyCharacter.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
end

Character.Animate.Disabled = true

game:GetService("UserInputService").JumpRequest:connect(function(t)
    if CopyCharacter.Humanoid.FloorMaterial~=Enum.Material.Air then 
        CopyCharacter.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        game.Players.LocalPlayer.Character.Chlorix:FindFirstChildOfClass('Humanoid').Sit=false 
    end 
end)

game.RunService.RenderStepped:Connect(function()
    CopyCharacter.Humanoid:Move(Character.Humanoid.MoveDirection,false)
    local animtracks = Humanoid:GetPlayingAnimationTracks()
        for n,l in pairs(animtracks) do 
            l:Stop()
        end 
end)

Torso.Anchored = false
LeftArm.Anchored = false
RightArm.Anchored = false
LeftLeg.Anchored = false
RightLeg.Anchored = false
Head.Anchored = false
game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "[Chlorix] Reanimated!",
    Color = Color3.fromRGB(0,255,0),
    TextSize = 18,
    Font = Enum.Font.Ubuntu
});
local something = true
spawn(function()
while true do 
    if something == true then 
        for n,l in pairs(Character:children()) do 
            pcall(function()
                if l.className=="Part" then 
                    l.CanCollide=false 
                elseif 
                    l.ClassName=="Model" then 
                        l.Head.CanCollide=false 
                end
            end)
        end
    end
game:service("RunService").Stepped:wait()
end
end)
end
end
local window = library:CreateMain()
local anims = window:CreateTab("Animations")
local b = window:CreateTab("Scripts")
local c = window:CreateTab("Hat Scripts")
local d = window:CreateTab("Misc")
anims:CreateButton("Billy Bounce", function()
reanim()
playid("3381474830")
end)
anims:CreateButton("Orange Justice", function()
   reanim()
   playid("3262592866")
end)
anims:CreateButton("Rat", function()
   reanim()
   playid("4746273203")
end)
anims:CreateButton("BrodyQuest", function()
   reanim()
   playid("3261753939")
end)
anims:CreateButton("Smug", function()
   reanim()
   playid("3450125501")
end)
anims:CreateButton("Blender", function()
   reanim()
   playid("3534855146")
end)
anims:CreateButton("Turk/Default Dance", function()
   reanim()
   playid("3259216638")
end)
anims:CreateButton("No Touchin'", function()
   reanim()
   playid("3414624197")
end)
anims:CreateButton("Crabby", function()
   reanim()
   playid("3643129020")
end)
anims:CreateButton("Boogie Down", function()
   reanim()
   playid("3623215692")
end)
anims:CreateButton("Casey", function()
   reanim()
   playid("3442913250")
end)
anims:CreateButton("Carlton", function()
   reanim()
   playid("4408536995")
end)
anims:CreateButton("Whip", function()
   reanim()
   playid("4633952191")
end)
anims:CreateButton("Engineer", function()
   reanim()
   playid("4677980227")
end)
-- 10/2/2021 new added animations.
anims:CreateButton("Electro Shuffle", function()
    reanim()
    playid("3619935462")
 end)
 anims:CreateButton("Soldier", function()
    reanim()
    playid("4787449997")
 end)
 anims:CreateButton("Floss", function()
    reanim()
    playid("4812941481")
 end)
 anims:CreateButton("Shuffle", function()
    reanim()
    playid("3485013176")
 end)
 anims:CreateButton("Blowjob", function()
    reanim()
    playid("4963373273")
 end)
 anims:CreateButton("Bang", function()
    reanim()
    playid("4966879039")
 end)
 anims:CreateButton("Pushups", function()
    reanim()
    playid("4966881089")
 end)
 anims:CreateButton("Bend over", function()
    reanim()
    playid("4966882047")
 end)
 anims:CreateButton("Rewind", function()
    reanim()
    playid("5011408603")
 end)
 anims:CreateButton("Aerostep", function()
    reanim()
    playid("4776588732")
 end)
 anims:CreateButton("Thriller", function()
    reanim()
    playid("4846220052")
 end)
 anims:CreateButton("Thriller 2.0", function()
    reanim()
    playid("4699820365")
 end)
 anims:CreateButton("Goopie", function()
    reanim()
    playid("5238669868")
 end)
 anims:CreateButton("Skibidi", function()
    reanim()
    playid("4835795413")
 end)
 anims:CreateButton("Carson Shearer", function()
    reanim()
    playid("5806573931")
 end)
-- real
d:CreateButton("Fast Reset", function()
    local spawn = game.Players.RespawnTime + 0.2
    local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):Destroy()
    wait(spawn)
    repeat wait() until game.Players.LocalPlayer.Character
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
d:CreateButton("Normal Reset", function()
    local spawn = game.Players.RespawnTime + 0.2
    local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):Destroy()
    wait(spawn)
end)
