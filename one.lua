if game.CoreGui:FindFirstChild("NordUi") then
    game.CoreGui:FindFirstChild("NordUi"):Destroy()
    game.StarterGui:SetCore('SendNotification',
        {
            Title = "Free Hub",
            Text = "Reloading UI? - grifin",
            Duration = 2,
        }
    )
else
    game.StarterGui:SetCore('SendNotification',
        {
            Title = "Free Hub",
            Text = "Loading UI? - grifin",
            Duration = 2,
        }
    )
end

NordUi = Instance.new("ScreenGui")
NordScheme = Instance.new("Frame")
UICorner = Instance.new("UICorner")
TabDecor = Instance.new("Frame")
UICorner_2 = Instance.new("UICorner")
SubDecor1 = Instance.new("Frame")
PlayerName = Instance.new("TextLabel")
PlayerProfile = Instance.new("ImageLabel")
UICorner_3 = Instance.new("UICorner")
SubDecor2 = Instance.new("Frame")
UICorner_4 = Instance.new("UICorner")
Title = Instance.new("TextLabel")
SectionFrames = Instance.new("Frame")
UIPageLayout = Instance.new("UIPageLayout")
UIPadding = Instance.new("UIPadding")
SupportFrame = Instance.new("Frame")
Discord5 = Instance.new("TextButton")
Frame = Instance.new("Frame")
UICorner_5 = Instance.new("UICorner")
TextLabel = Instance.new("TextLabel")
Support1 = Instance.new("TextLabel")
Credits1 = Instance.new("TextLabel")
Credits2 = Instance.new("TextLabel")
CloseDecor = Instance.new("Frame")
Minimize = Instance.new("TextButton")
CloseUi = Instance.new("TextButton")
ButtonsFrame = Instance.new("Frame")
UIPageLayout_2 = Instance.new("UIPageLayout")
PageTurner = Instance.new("Frame")
PageLeft = Instance.new("TextButton")
UIListLayout = Instance.new("UIListLayout")
PageNumber = Instance.new("TextLabel")
PageRight = Instance.new("TextButton")
SupportButton = Instance.new("TextButton")
Frame_2 = Instance.new("Frame")
UICorner_6 = Instance.new("UICorner")
Section5Name = Instance.new("TextLabel")

NordUi.Name = "NordUi"
NordUi.Parent = game.CoreGui
NordUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
NordUi.ResetOnSpawn = false
NordScheme.Name = "NordScheme"
NordScheme.Parent = NordUi
NordScheme.AnchorPoint = Vector2.new(0.5, 0)
NordScheme.BackgroundColor3 = Color3.fromRGB(46, 52, 64)
NordScheme.BorderColor3 = Color3.fromRGB(46, 52, 64)
NordScheme.ClipsDescendants = true
NordScheme.Position = UDim2.new(0.5, 0, 0.349999994, 0)
NordScheme.Size = UDim2.new(0, 350, 0, 250)
UICorner.Parent = NordScheme
TabDecor.Name = "TabDecor"
TabDecor.Parent = NordScheme
TabDecor.AnchorPoint = Vector2.new(0.5, 0.5)
TabDecor.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
TabDecor.BorderColor3 = Color3.fromRGB(59, 66, 82)
TabDecor.Position = UDim2.new(0, 50, 0, 125)
TabDecor.Size = UDim2.new(0, 100, 0, 250)
TabDecor.ZIndex = 0
UICorner_2.Parent = TabDecor
SubDecor1.Name = "SubDecor1"
SubDecor1.Parent = TabDecor
SubDecor1.AnchorPoint = Vector2.new(1, 0.5)
SubDecor1.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
SubDecor1.BorderColor3 = Color3.fromRGB(59, 66, 82)
SubDecor1.BorderSizePixel = 0
SubDecor1.Position = UDim2.new(1, 0, 0.5, 0)
SubDecor1.Size = UDim2.new(0, 20, 0, 250)
SubDecor1.ZIndex = 0
PlayerName.Name = "PlayerName"
PlayerName.Parent = TabDecor
PlayerName.AnchorPoint = Vector2.new(0, 0.5)
PlayerName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.BackgroundTransparency = 1.000
PlayerName.Position = UDim2.new(0, 30, 0, 14)
PlayerName.Size = UDim2.new(0, 70, 0, 14)
PlayerName.Font = Enum.Font.SourceSans
PlayerName.Text = "Name"
PlayerName.TextColor3 = Color3.fromRGB(216, 222, 233)
PlayerName.TextScaled = true
PlayerName.TextSize = 14.000
PlayerName.TextWrapped = true
PlayerName.TextXAlignment = Enum.TextXAlignment.Left
PlayerProfile.Name = "PlayerProfile"
PlayerProfile.Parent = TabDecor
PlayerProfile.BackgroundColor3 = Color3.fromRGB(46, 52, 64)
PlayerProfile.BackgroundTransparency = 0.500
PlayerProfile.Position = UDim2.new(0, 5, 0, 4)
PlayerProfile.Size = UDim2.new(0, 20, 0, 20)
PlayerProfile.BackgroundTransparency = 1
PlayerProfile.ZIndex = 0
PlayerProfile.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
UICorner_3.CornerRadius = UDim.new(0, 100)
UICorner_3.Parent = PlayerProfile
SubDecor2.Name = "SubDecor2"
SubDecor2.Parent = TabDecor
SubDecor2.AnchorPoint = Vector2.new(0.5, 0.5)
SubDecor2.BackgroundColor3 = Color3.fromRGB(46, 52, 64)
SubDecor2.BorderColor3 = Color3.fromRGB(46, 52, 64)
SubDecor2.BorderSizePixel = 0
SubDecor2.Position = UDim2.new(0, 325, 0, 125)
SubDecor2.Size = UDim2.new(0, 50, 0, 250)
SubDecor2.ZIndex = 0
UICorner_4.Parent = SubDecor2
Title.Name = "Title"
Title.Parent = NordScheme
Title.AnchorPoint = Vector2.new(0.5, 0)
Title.BackgroundColor3 = Color3.fromRGB(216, 222, 233)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(216, 222, 233)
Title.Position = UDim2.new(0, 185, 0, 0)
Title.Size = UDim2.new(0, 160, 0, 20)
Title.Font = Enum.Font.Gotham
Title.Text = "Free Boombox Visualizer"
Title.TextColor3 = Color3.fromRGB(216, 222, 233)
Title.TextSize = 14.000
Title.TextXAlignment = Enum.TextXAlignment.Left
SectionFrames.Name = "SectionFrames"
SectionFrames.Parent = NordScheme
SectionFrames.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SectionFrames.BackgroundTransparency = 1.000
SectionFrames.BorderSizePixel = 0
SectionFrames.ClipsDescendants = true
SectionFrames.Position = UDim2.new(0, 105, 0, 25)
SectionFrames.Size = UDim2.new(0, 240, 0, 220)
UIPageLayout.Parent = SectionFrames
UIPageLayout.FillDirection = Enum.FillDirection.Vertical
UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIPageLayout.EasingStyle = Enum.EasingStyle.Exponential
UIPageLayout.Padding = UDim.new(0, 10)
UIPadding.Parent = SectionFrames
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingTop = UDim.new(0, 5)
SupportFrame.Name = "SupportFrame"
SupportFrame.Parent = SectionFrames
SupportFrame.AnchorPoint = Vector2.new(0.5, 0.5)
SupportFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SupportFrame.BackgroundTransparency = 1.000
SupportFrame.Size = UDim2.new(0, 230, 0, 210)
SupportFrame.ZIndex = 0
Discord5.Name = "Discord5"
Discord5.Parent = SupportFrame
Discord5.AnchorPoint = Vector2.new(0.5, 0.5)
Discord5.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
Discord5.BackgroundTransparency = 1.000
Discord5.ClipsDescendants = true
Discord5.Position = UDim2.new(0, 115, 0, 104)
Discord5.Size = UDim2.new(0, 200, 0, 25)
Discord5.Font = Enum.Font.Gotham
Discord5.Text = "0"
Discord5.TextColor3 = Color3.fromRGB(216, 222, 233)
Discord5.TextSize = 14.000
Frame.Parent = Discord5
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 200, 0, 25)
Frame.ZIndex = 0
UICorner_5.Parent = Frame
TextLabel.Parent = Discord5
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 25)
TextLabel.ZIndex = 0
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "Copy Discord"
TextLabel.TextColor3 = Color3.fromRGB(216, 222, 233)
TextLabel.TextSize = 14.000
Support1.Name = "Support1"
Support1.Parent = SupportFrame
Support1.AnchorPoint = Vector2.new(0.5, 0.5)
Support1.BackgroundColor3 = Color3.fromRGB(46, 52, 64)
Support1.BorderColor3 = Color3.fromRGB(216, 222, 233)
Support1.Position = UDim2.new(0, 115, 0, 45)
Support1.Size = UDim2.new(0, 200, 0, 80)
Support1.Font = Enum.Font.Gotham
Support1.Text = "The button below will set your clipboard to a discord server dedicated to this hub. If you wish to provide another visualizer or a Discord not added you can join and dm the owner it!"
Support1.TextColor3 = Color3.fromRGB(216, 222, 233)
Support1.TextSize = 13.000
Support1.TextWrapped = true
Credits1.Name = "Credits1"
Credits1.Parent = SupportFrame
Credits1.AnchorPoint = Vector2.new(0.5, 0.5)
Credits1.BackgroundColor3 = Color3.fromRGB(46, 52, 64)
Credits1.BorderColor3 = Color3.fromRGB(216, 222, 233)
Credits1.Position = UDim2.new(0, 115, 0, 132)
Credits1.Size = UDim2.new(0, 200, 0, 15)
Credits1.Font = Enum.Font.Gotham
Credits1.Text = "Credits"
Credits1.TextColor3 = Color3.fromRGB(216, 222, 233)
Credits1.TextSize = 15.000
Credits1.TextWrapped = true
Credits2.Name = "Credits2"
Credits2.Parent = SupportFrame
Credits2.AnchorPoint = Vector2.new(0.5, 0.5)
Credits2.BackgroundColor3 = Color3.fromRGB(46, 52, 64)
Credits2.BorderColor3 = Color3.fromRGB(216, 222, 233)
Credits2.Position = UDim2.new(0, 115, 0, 160)
Credits2.Size = UDim2.new(0, 200, 0, 40)
Credits2.Font = Enum.Font.Gotham
Credits2.Text = "Ui - griffin/vykzs/grifin, bunch of people on devforum\\nHubs - lotta people so credit to respective owners of those"
Credits2.TextColor3 = Color3.fromRGB(216, 222, 233)
Credits2.TextSize = 9.000
Credits2.TextWrapped = true
Credits2.TextYAlignment = Enum.TextYAlignment.Top
CloseDecor.Name = "CloseDecor"
CloseDecor.Parent = NordScheme
CloseDecor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseDecor.BackgroundTransparency = 1.000
CloseDecor.Position = UDim2.new(0.842857122, 0, 0, 0)
CloseDecor.Size = UDim2.new(0, 55, 0, 20)
Minimize.Name = "Minimize"
Minimize.Parent = CloseDecor
Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minimize.BackgroundTransparency = 1.000
Minimize.Position = UDim2.new(0, 10, 0, 0)
Minimize.Size = UDim2.new(0, 25, 0, 20)
Minimize.Font = Enum.Font.Gotham
Minimize.Text = "_"
Minimize.TextColor3 = Color3.fromRGB(216, 222, 233)
Minimize.TextSize = 14.000
CloseUi.Name = "CloseUi"
CloseUi.Parent = CloseDecor
CloseUi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseUi.BackgroundTransparency = 1.000
CloseUi.Position = UDim2.new(0, 30, 0, 0)
CloseUi.Size = UDim2.new(0, 25, 0, 20)
CloseUi.Font = Enum.Font.Gotham
CloseUi.Text = "X"
CloseUi.TextColor3 = Color3.fromRGB(210, 60, 65)
CloseUi.TextSize = 14.000
ButtonsFrame.Name = "ButtonsFrame"
ButtonsFrame.Parent = NordScheme
ButtonsFrame.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
ButtonsFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
ButtonsFrame.BorderSizePixel = 0
ButtonsFrame.ClipsDescendants = true
ButtonsFrame.Position = UDim2.new(0, 0, 0, 30)
ButtonsFrame.Size = UDim2.new(0, 100, 0, 150)
UIPageLayout_2.Parent = ButtonsFrame
UIPageLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIPageLayout_2.EasingDirection = Enum.EasingDirection.InOut
UIPageLayout_2.EasingStyle = Enum.EasingStyle.Sine
UIPageLayout_2.TweenTime = 0.500
PageTurner.Name = "PageTurner"
PageTurner.Parent = NordScheme
PageTurner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageTurner.BackgroundTransparency = 1.000
PageTurner.Position = UDim2.new(0, 0, 0.899999976, 0)
PageTurner.Size = UDim2.new(0, 100, 0, 20)
PageLeft.Name = "PageLeft"
PageLeft.Parent = PageTurner
PageLeft.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageLeft.BackgroundTransparency = 1.000
PageLeft.BorderColor3 = Color3.fromRGB(27, 42, 53)
PageLeft.Size = UDim2.new(0, 20, 0, 20)
PageLeft.Font = Enum.Font.Gotham
PageLeft.Text = "<"
PageLeft.TextColor3 = Color3.fromRGB(216, 222, 233)
PageLeft.TextSize = 20.000
UIListLayout.Parent = PageTurner
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
PageNumber.Name = "PageNumber"
PageNumber.Parent = PageTurner
PageNumber.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageNumber.BackgroundTransparency = 1.000
PageNumber.Size = UDim2.new(0, 20, 0, 20)
PageNumber.Font = Enum.Font.Gotham
PageNumber.Text = "1"
PageNumber.TextColor3 = Color3.fromRGB(216, 222, 233)
PageNumber.TextSize = 16.000
PageRight.Name = "PageRight"
PageRight.Parent = PageTurner
PageRight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageRight.BackgroundTransparency = 1.000
PageRight.Size = UDim2.new(0, 20, 0, 20)
PageRight.Font = Enum.Font.Gotham
PageRight.Text = ">"
PageRight.TextColor3 = Color3.fromRGB(216, 222, 233)
PageRight.TextSize = 20.000
SupportButton.Name = "SupportButton"
SupportButton.Parent = NordScheme
SupportButton.AnchorPoint = Vector2.new(0.5, 0.5)
SupportButton.BackgroundColor3 = Color3.fromRGB(76, 86, 106)
SupportButton.BackgroundTransparency = 1.000
SupportButton.BorderColor3 = Color3.fromRGB(76, 86, 106)
SupportButton.Position = UDim2.new(0, 47, 0, 202)
SupportButton.Size = UDim2.new(0, 84, 0, 35)
SupportButton.Font = Enum.Font.SourceSans
SupportButton.Text = "Button1"
SupportButton.TextColor3 = Color3.fromRGB(216, 222, 233)
SupportButton.TextSize = 14.000
SupportButton.TextTransparency = 1.000
Frame_2.Parent = SupportButton
Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_2.BackgroundColor3 = Color3.fromRGB(76, 86, 106)
Frame_2.BackgroundTransparency = 1.000
Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame_2.Size = UDim2.new(0, 84, 0, 40)
Frame_2.ZIndex = 0
UICorner_6.CornerRadius = UDim.new(0, 4)
UICorner_6.Parent = Frame_2
Section5Name.Name = "Section5Name"
Section5Name.Parent = Frame_2
Section5Name.AnchorPoint = Vector2.new(0.5, 0.5)
Section5Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Section5Name.BackgroundTransparency = 1.000
Section5Name.Position = UDim2.new(0.5, 0, 0.5, 0)
Section5Name.Size = UDim2.new(0, 84, 0, 40)
Section5Name.ZIndex = 0
Section5Name.Font = Enum.Font.Gotham
Section5Name.Text = "Misc."
Section5Name.TextColor3 = Color3.fromRGB(216, 222, 233)
Section5Name.TextSize = 14.000

pcall(function()
    local function IQHXHG_fake_script() -- Discord5.DiscordScript5 
        local script = Instance.new('LocalScript', Discord5)

        script.Parent.MouseButton1Down:Connect(function()
        
        end)
    end
    coroutine.wrap(IQHXHG_fake_script)()
    local function OVAUP_fake_script() -- NordScheme.Starter 
        local script = Instance.new('LocalScript', NordScheme)

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
        dragify(script.Parent)
        script.Parent.TabDecor.PlayerName.Text = game:GetService("Players").LocalPlayer.DisplayName
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local userId = player.UserId	
        local thumbType = Enum.ThumbnailType.HeadShot
        local thumbSize = Enum.ThumbnailSize.Size420x420
        local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
        local HeadPlace = script.Parent.TabDecor.PlayerProfile
        HeadPlace.Image = content
    end
    coroutine.wrap(OVAUP_fake_script)()
    local function GEQK_fake_script() -- Minimize.MinimizeScript 
        local script = Instance.new('LocalScript', Minimize)

        Filler = script.Parent.Parent.Parent.Parent
        Object = Filler.NordScheme
        Minimize = {
            Size = UDim2.new(0, 350,0, 25)
        }
        Maximize = {
            Size = UDim2.new(0, 350,0, 250)
        }
        
        TsGet = game:GetService("TweenService")
        tweeninfo = TweenInfo.new(0.75, Enum.EasingStyle.Sine)
        Mini = TsGet:Create(Object, tweeninfo, Minimize)
        Max = TsGet:Create(Object, tweeninfo, Maximize)
        
        
        script.Parent.MouseButton1Down:Connect(function()
            if getgenv().Minimized == false then
                Mini:Play()
                getgenv().Minimized = true
            else
                Max:Play()
                getgenv().Minimized = false
            end
        end)
    end
    coroutine.wrap(GEQK_fake_script)()
    local function HINN_fake_script() -- CloseUi.CloseScript 
        local script = Instance.new('LocalScript', CloseUi)

        script.Parent.MouseButton1Down:Connect(function()
            warn("\n NordUi for Free Hubs closed \n - grifin")
            script.Parent.Parent.Parent.Parent:Destroy()
        end)
    end
    coroutine.wrap(HINN_fake_script)()
    local function GONKETK_fake_script() -- ButtonsFrame.ButtonGlobals 
        local script = Instance.new('LocalScript', ButtonsFrame)

        getgenv().Support = true
        getgenv().MaxPage = 0
    end
    coroutine.wrap(GONKETK_fake_script)()
    local function DEXXMC_fake_script() -- PageLeft.LeftScript 
        local script = Instance.new('LocalScript', PageLeft)

        script.Parent.MouseButton1Down:Connect(function()
            if script.Parent.Parent.PageNumber.Text == "1" then
                wait()
            else
                script.Parent.Parent.PageNumber.Text = script.Parent.Parent.PageNumber.Text-1
                script.Parent.Parent.Parent.ButtonsFrame.UIPageLayout:Previous()
                local ButtonsFrame = script.Parent.Parent.Parent.ButtonsFrame
                local TsGet = game:GetService("TweenService")
                local tweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
                for i,v in next, ButtonsFrame.SectionTwo:GetChildren() do
                    if v:IsA("TextButton") then
                        TsGet:Create(
                            v.Frame,
                            tweeninfo,
                            {BackgroundTransparency = 1}
                        ):Play()
                    end
                end
            end
        end)
    end
    coroutine.wrap(DEXXMC_fake_script)()
    local function PDDUN_fake_script() -- PageRight.RightScript 
        local script = Instance.new('LocalScript', PageRight)

        script.Parent.MouseButton1Down:Connect(function()
            if script.Parent.Parent.PageNumber.Text == tostring(getgenv().MaxPage) then
                wait()
            else
                script.Parent.Parent.PageNumber.Text = script.Parent.Parent.PageNumber.Text+1
                script.Parent.Parent.Parent.ButtonsFrame.UIPageLayout:Next()
                local ButtonsFrame = script.Parent.Parent.Parent.ButtonsFrame
                local TsGet = game:GetService("TweenService")
                local tweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
                for i,v in next, ButtonsFrame.SectionOne:GetChildren() do
                    if v:IsA("TextButton") then
                        TsGet:Create(
                            v.Frame,
                            tweeninfo,
                            {BackgroundTransparency = 1}
                        ):Play()
                    end
                end
            end
        end)
    end
    coroutine.wrap(PDDUN_fake_script)()
    local function BGSC_fake_script() -- SupportButton.SupportScript 
        local script = Instance.new('LocalScript', SupportButton)

        ButtonsFrame = script.Parent.Parent.ButtonsFrame
        Object = script.Parent.Frame
        InFaderGoal = {
            BackgroundTransparency = 0.5
        }
        OutFaderGoal = {
            BackgroundTransparency = 1
        }
        SelectedGoal = {
            BackgroundTransparency = 0
        }
        
        TsGet = game:GetService("TweenService")
        tweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
        InFader = TsGet:Create(Object, tweeninfo, InFaderGoal)
        OutFader = TsGet:Create(Object, tweeninfo, OutFaderGoal)
        Selected = TsGet:Create(Object, tweeninfo, SelectedGoal)
        
        
        script.Parent.MouseEnter:Connect(function()
            if getgenv().Support then
                wait()
            else
                InFader:Play()
            end
        end)
        script.Parent.MouseLeave:Connect(function()
            if getgenv().Support then
                wait()
            else
                OutFader:Play()
            end
        end)
        
        SectionFrames = script.Parent.Parent.SectionFrames
        script.Parent.MouseButton1Click:Connect(function()
            if script.Parent.BackgroundTransparency == 1 then
                for i,v in next, ButtonsFrame:GetChildren() do
                    if v:IsA("Frame") then
                        for i,v in next, v:GetChildren() do
                            if v:IsA("TextButton") then
                                TsGet:Create(
                                    v.Frame,
                                    tweeninfo,
                                    OutFaderGoal
                                ):Play()
                            end
                        end
                    end
                end
                getgenv().Support = not getgenv().Support
                Selected:Play()
                SectionFrames.UIPageLayout:JumpTo(SectionFrames.SupportFrame)
            else
                wait()
            end
        end)
        Selected:Play()
        task.spawn(function()
            while true do
                wait()
                if getgenv().Support == false then
                    OutFader:Play()
                end
            end
        end)
    end
    coroutine.wrap(BGSC_fake_script)()
end)
