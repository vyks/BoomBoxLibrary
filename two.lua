local function ZUASX_fake_script() -- ButtonsFrame.TabMaker 
        local script = Instance.new('LocalScript', ButtonsFrame)

        local SectionFrames = script.Parent.Parent.SectionsFrame
        TsGet = game:GetService("TweenService")
        
        local declined = ("<font color='rgb(210, 60, 65)'>%s</font>")
        local accepted = ("<font color='rgb(80, 220, 95)'>%s</font>")
        
        local Page = {}
        function Page:Section(name)
            name = name or "no name"
            getgenv().MaxPage =  getgenv().MaxPage + 1
            
            local ButtonSection = Instance.new("Frame")
            ButtonSection.Name = name
            ButtonSection.Parent = script.Parent
            ButtonSection.AnchorPoint = Vector2.new(0.5, 0.5)
            ButtonSection.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
            ButtonSection.BackgroundTransparency = 1.000
            ButtonSection.BorderColor3 = Color3.fromRGB(216, 222, 233)
            ButtonSection.BorderSizePixel = 0
            ButtonSection.Position = UDim2.new(0.5, 0, 0.5, 0)
            ButtonSection.Size = UDim2.new(0, 100, 0, 195)
            
            local UIListLayout = Instance.new("UIListLayout")
            UIListLayout.Parent = ButtonSection
            UIListLayout.Padding = UDim.new(0, 7)
            
            local UIPadding = Instance.new("UIPadding")
            UIPadding.Parent = ButtonSection
            UIPadding.PaddingBottom = UDim.new(0, 5)
            UIPadding.PaddingLeft = UDim.new(0, 5)
            UIPadding.PaddingTop = UDim.new(0, 5)
            
            
            local Tabs = {}
            
            function Tabs:Tab(properties)
                local properties = properties or {}
                
                local SectionButton = Instance.new("TextButton")
                SectionButton.Name = "SectionButton"
                SectionButton.Parent = ButtonSection
                SectionButton.AnchorPoint = Vector2.new(0.5, 0.5)
                SectionButton.BackgroundColor3 = Color3.fromRGB(76, 86, 106)
                SectionButton.BackgroundTransparency = 1.000
                SectionButton.BorderColor3 = Color3.fromRGB(76, 86, 106)
                SectionButton.Position = UDim2.new(0, 47, 0, 25)
                SectionButton.Size = UDim2.new(0, 84, 0, 30)
                SectionButton.Font = Enum.Font.SourceSans
                SectionButton.Text = ""
                SectionButton.TextColor3 = Color3.fromRGB(216, 222, 233)
                SectionButton.TextSize = 14.000
                
                local Frame = Instance.new("Frame")
                Frame.Parent = SectionButton
                Frame.AnchorPoint = Vector2.new(0.5, 0.5)
                Frame.BackgroundColor3 = Color3.fromRGB(76, 86, 106)
                Frame.BackgroundTransparency = 1.000
                Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
                Frame.Size = UDim2.new(0, 84, 0, 30)
                Frame.ZIndex = 0
        
                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0, 4)
                UICorner.Parent = Frame
        
                local Button1Name = Instance.new("TextLabel")
                Button1Name.Name = "Button1Name"
                Button1Name.Parent = Frame
                Button1Name.AnchorPoint = Vector2.new(0.5, 0.5)
                Button1Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Button1Name.BackgroundTransparency = 1.000
                Button1Name.Position = UDim2.new(0.5, 0, 0.5, 0)
                Button1Name.Size = UDim2.new(0, 84, 0, 30)
                Button1Name.ZIndex = 0
                Button1Name.Font = Enum.Font.Gotham
                Button1Name.Text = properties.Name
                Button1Name.TextColor3 = Color3.fromRGB(216, 222, 233)
                Button1Name.TextSize = 14.000
                
                local WindowFrame = Instance.new("Frame")
                WindowFrame.Name = properties.Name.."Window"
                WindowFrame.Parent = script.Parent.Parent.SectionsFrame
                WindowFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                WindowFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                WindowFrame.BackgroundTransparency = 1.000
                WindowFrame.Size = UDim2.new(0, 230, 0, 210)
                WindowFrame.ZIndex = 0
                
                local UIListLayout = Instance.new("UIListLayout")
                UIListLayout.Parent = WindowFrame
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.Padding = UDim.new(0, 5)
                
                local D = Instance.new("Frame")
                D.Name = "D"
                D.Parent = WindowFrame
                D.AnchorPoint = Vector2.new(0.5, 0.5)
                D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                D.BackgroundTransparency = 1.000
                D.BorderColor3 = Color3.fromRGB(27, 42, 53)
                D.Position = UDim2.new(0.5, 0, 0.40476191, 0)
                D.Size = UDim2.new(0, 200, 0, 50)
                
                local UIGridLayout = Instance.new("UIGridLayout")
                UIGridLayout.Parent = D
                UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIGridLayout.CellPadding = UDim2.new(0.025, 0, 0.05, 0)
                UIGridLayout.CellSize = UDim2.new(0.475, 0, 0, 25)
                UIGridLayout.FillDirectionMaxCells = 2
                
                --script
                
                SectionButton.MouseEnter:Connect(function()
                    if SectionButton.Frame.BackgroundTransparency < 0.5  then
                        wait()
                    else
                        TsGet:Create(
                            SectionButton.Frame,
                            TweenInfo.new(0.5, Enum.EasingStyle.Sine),
                            {BackgroundTransparency = 0.5}
                        ):Play()
                    end
                end)
                SectionButton.MouseLeave:Connect(function()
                    if SectionButton.Frame.BackgroundTransparency < 0.5 then
                        wait()
                    else
                        TsGet:Create(
                            SectionButton.Frame,
                            TweenInfo.new(0.5, Enum.EasingStyle.Sine),
                            {BackgroundTransparency = 1}
                        ):Play()
                    end
                end)
                
                SectionButton.MouseButton1Click:Connect(function()
                    getgenv().Support = false 
                    
                    SectionFrames.UIPageLayout:JumpTo(SectionFrames[properties.Name.."Window"])
                    for i,v in next, ButtonSection:GetChildren() do
                        if v:IsA("TextButton") then
                            TsGet:Create(
                                v.Frame,
                                TweenInfo.new(0.5, Enum.EasingStyle.Sine),
                                {BackgroundTransparency = 1}
                            ):Play()
                        end
                    end
                    TsGet:Create(
                        SectionButton.Frame,
                        TweenInfo.new(0.5, Enum.EasingStyle.Sine),
                        {BackgroundTransparency = 0}
                    ):Play()
                end)
                
                local TabItems = {}
                function TabItems:Execute(name, func)
                    name = name or "Not Given"
                    func = func or function()end
                    
                    local B = Instance.new("TextButton")
                    B.Name = "B"
                    B.Parent = WindowFrame
                    B.AnchorPoint = Vector2.new(0.5, 0.5)
                    B.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
                    B.BackgroundTransparency = 1.000
                    B.ClipsDescendants = true
                    B.Position = UDim2.new(0.5, 0, 0.0690476224, 0)
                    B.Size = UDim2.new(0, 200, 0, 25)
                    B.Font = Enum.Font.Gotham
                    B.Text = ""
                    B.TextColor3 = Color3.fromRGB(216, 222, 233)
                    B.TextSize = 14.000
        
                    local Background = Instance.new("Frame")
                    Background.Name = "Background"
                    Background.Parent = B
                    Background.AnchorPoint = Vector2.new(0.5, 0.5)
                    Background.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
                    Background.Position = UDim2.new(0.5, 0, 0.5, 0)
                    Background.Size = UDim2.new(0, 200, 0, 25)
                    Background.ZIndex = 0
        
                    local UICorner = Instance.new("UICorner")
                    UICorner.Parent = Background
        
                    local Text = Instance.new("TextLabel")
                    Text.Name = "Text"
                    Text.Parent = B
                    Text.AnchorPoint = Vector2.new(0.5, 0.5)
                    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Text.BackgroundTransparency = 1.000
                    Text.Position = UDim2.new(0.5, 0, 0.5, 0)
                    Text.Size = UDim2.new(0, 200, 0, 25)
                    Text.ZIndex = 0
                    Text.Font = Enum.Font.Gotham
                    Text.Text = name
                    Text.TextColor3 = Color3.fromRGB(216, 222, 233)
                    Text.TextSize = 14.000
                    local function	ExecuteScript() -- B.ExecuteScript 
                        local script = Instance.new('LocalScript', B)
        
                        local p = script.Parent
                            
                        local o = script.Parent.Background
                        local TsGet = game:GetService("TweenService")
                        local tweeninfo = TweenInfo.new(0.1, Enum.EasingStyle.Sine)
        
                        p.MouseButton1Down:Connect(function()
                            local tween = TsGet:Create(o,tweeninfo,{
                                BackgroundTransparency = 0.5
                            }):Play()
                        end)
                        p.MouseButton1Up:Connect(function()
                            local tween = TsGet:Create(o,tweeninfo,{
                                BackgroundTransparency = 0
                            }):Play()
                        end)
                        p.MouseButton1Click:Connect(function()
                            func()
                        end)
                    end
                    coroutine.wrap(ExecuteScript)()
                end
                function TabItems:Desc(text)
                    text = text or "No text given"
                    
                    local C = Instance.new("TextLabel")
                    C.Name = "C"
                    C.Parent = WindowFrame
                    C.AnchorPoint = Vector2.new(0.5, 0.5)
                    C.BackgroundColor3 = Color3.fromRGB(46, 52, 64)
                    C.BorderColor3 = Color3.fromRGB(216, 222, 233)
                    C.Position = UDim2.new(0.5, 0, 0.842857122, 0)
                    C.Size = UDim2.new(0, 200, 0, 50)
                    C.Font = Enum.Font.Gotham
                    C.Text = text
                    C.TextColor3 = Color3.fromRGB(216, 222, 233)
                    C.TextSize = 13.000
                    C.TextWrapped = true
                end
                function TabItems:ClipBoard(name, func)
                    name = name or "no name"
                    func = func or function()end
                    
                    local ClipBoard = Instance.new("TextButton")
                    ClipBoard.Name = "Discord"
                    ClipBoard.Parent = D
                    ClipBoard.AnchorPoint = Vector2.new(0.5, 0.5)
                    ClipBoard.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
                    ClipBoard.BackgroundTransparency = 1.000
                    ClipBoard.ClipsDescendants = true
                    ClipBoard.Position = UDim2.new(0, 115, 0, 104)
                    ClipBoard.Size = UDim2.new(0.475, 0, 0, 25)
                    ClipBoard.Font = Enum.Font.Gotham
                    ClipBoard.Text = ""
                    ClipBoard.TextColor3 = Color3.fromRGB(216, 222, 233)
                    ClipBoard.TextSize = 14.000
        
                    local Background = Instance.new("Frame")
                    Background.Name = "Background"
                    Background.Parent = ClipBoard
                    Background.AnchorPoint = Vector2.new(0.5, 0.5)
                    Background.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
                    Background.Position = UDim2.new(0.5, 0, 0.5, 0)
                    Background.Size = UDim2.new(1, 0, 1, 0)
                    Background.ZIndex = 0
        
                    local UICorner = Instance.new("UICorner")
                    UICorner.Parent = Background
        
                    local Text = Instance.new("TextLabel")
                    Text.Name = "Text"
                    Text.Parent = ClipBoard
                    Text.AnchorPoint = Vector2.new(0.5, 0.5)
                    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Text.BackgroundTransparency = 1.000
                    Text.Position = UDim2.new(0.5, 0, 0.5, 0)
                    Text.Size = UDim2.new(1, 0, 1, 0)
                    Text.ZIndex = 0
                    Text.Font = Enum.Font.Gotham
                    Text.Text = name
                    Text.TextColor3 = Color3.fromRGB(216, 222, 233)
                    Text.TextSize = 14.000
                    
                    --script
        
                    ClipBoard.MouseButton1Down:Connect(function()
                        local tween = TsGet:Create(
                            Background,
                            TweenInfo.new(0.1, Enum.EasingStyle.Sine),
                            {BackgroundTransparency = 0.5}
                        ):Play()
                    end)
                    ClipBoard.MouseButton1Up:Connect(function()
                        local tween = TsGet:Create(
                            Background,
                            TweenInfo.new(0.1, Enum.EasingStyle.Sine),
                            {BackgroundTransparency = 0}
                        ):Play()
                    end)
                    ClipBoard.MouseButton1Click:Connect(function()
                        func()
                    end)
                end
                function TabItems:Executors(properties)
                    properties = properties or {}
                    
                    local A = Instance.new("TextLabel")
                    A.Name = "A"
                    A.Parent = WindowFrame
                    A.AnchorPoint = Vector2.new(0.5, 0.5)
                    A.BackgroundColor3 = Color3.fromRGB(46, 52, 64)
                    A.BorderColor3 = Color3.fromRGB(216, 222, 233)
                    A.BorderSizePixel = 0
                    A.Position = UDim2.new(0.5, 0, 0.0714285746, 0)
                    A.Size = UDim2.new(0, 200, 0, 30)
                    A.Font = Enum.Font.Gotham
                    A.TextColor3 = Color3.fromRGB(216, 222, 233)
                    A.TextSize = 13.000
                    A.TextWrapped = true
                    A.TextYAlignment = Enum.TextYAlignment.Top
                    A.RichText = true
                    A.Text = "Supported Executors: "
                    
                    --script
                    
                    local descrim = 0
                    for i,v in next, properties do
                        if descrim == 0 then
                            local old = A.Text
                            local new = string.format(old.."%s",v)
                            A.Text = new
                            descrim = descrim + 1
                        else
                            local old = A.Text
                            local new = string.format(old..", %s",v)
                            A.Text = new
                        end
                    end
                    A.Size = UDim2.new(0, 200, 0, A.TextBounds.Y)
                end
                return TabItems
            end
            return Tabs
        end
        
        page1 = Page:Section("SectionOne")
        page2 = Page:Section("SectionTwo")
        
        tab1 = page1:Tab({Name = "Pineapple"})
        execute1 = tab1:Execute("Execute!",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/AuxPineapple.lua", true))()
        end)
        desc1 = tab1:Desc(
            "This is Pineapple developed by Aux and as of now hasn't been updated since the initial release."
        )
        discord1 = tab1:ClipBoard("Discord", function()
            setclipboard("https://discord.gg/B47nj3GbKe")
        end)
        source1 = tab1:ClipBoard("Source", function()
            setclipboard("https://raw.githubusercontent.com/vyks/vyks/main/AuxPineapple.lua")
        end)
        executors1 = tab1:Executors({
            string.format(accepted, "Sw/Swm"),
            string.format(accepted, "Krnl"),
            string.format(accepted, "Syn"),
            string.format(accepted, "Fluxus"),
        })
        
        
        local tab2 = page1:Tab({Name = "Fanta"})
        execute2 = tab2:Execute("Execute!",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/FantaHub2.lua", true))()
        end)
        local desc2 = tab2:Desc(
            "This is Fanta Hub developed by an unknown persons. It hasn't recieved updates the initial release.")
        source2 = tab2:ClipBoard("Source", function()
            setclipboard("https://raw.githubusercontent.com/vyks/vyks/main/FantaHub2.lua")
        end)
        executors2 = tab2:Executors({
            string.format(accepted, "Sw/Swm"),
            string.format(accepted, "Krnl"),
            string.format(accepted, "Syn"),
            string.format(accepted, "Fluxus"),
        })
        
        local tab3 = page1:Tab({Name = "Lucious"})
        execute3A = tab3:Execute("Execute Normal!",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/NormalLucious.lua"))()
        end)
        execute3B = tab3:Execute("Execute Premium!",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/PremiumLucious.lua"))()
        end)
        local desc3 = tab3:Desc(
            "This script is a recoded version of Pineapple but to what I am told it acutally works.")
        source3A = tab3:ClipBoard("Normal", function()
            setclipboard("https://raw.githubusercontent.com/vyks/vyks/main/NormalLucious.lua")
        end)
        source3B = tab3:ClipBoard("Premium", function()
            setclipboard("https://raw.githubusercontent.com/vyks/vyks/main/PremiumLucious.lua")
        end)
        presets3 = tab3:ClipBoard("Presets", function()
            setclipboard("https://github.com/vyks/vyks/blob/main/LuciousPremiumPresets.zip")
        end)
        executors3 = tab3:Executors({
            string.format(accepted, "Sw/Swm"),
            string.format(accepted, "Krnl"),
            string.format(accepted, "Syn"),
            string.format(accepted, "Fluxus"),
        })
        
        local tab4 = page1:Tab({Name = "Verts"})
        execute4 = tab4:Execute("Execute!",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/VertsCrack.lua", true))()
        end)
        local desc4 = tab4:Desc(
            "This is Verts Hub developed by Vert I believe. It hasn't recieved updates since he quit.")
        source4 = tab4:ClipBoard("Source", function()
            setclipboard("https://raw.githubusercontent.com/vyks/vyks/main/VertsCrack.lua")
        end)
        preset4 = tab4:ClipBoard("Preset", function()
            setclipboard("https://github.com/vyks/vyks/blob/main/VertsPresets.zip")
        end)
        executors4 = tab4:Executors({
            string.format(accepted, "Sw"),
            string.format(declined, "Swm"),
            string.format(declined, "Krnl"),
            string.format(accepted, "Syn"),
            string.format(accepted, "Fluxus"),
        })
        
        local tab5 = page2:Tab({Name = "CypherX"})
        execute5 = tab5:Execute("Execute!",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/Cyphrex.lua"))()
        end)
        local desc5 = tab5:Desc(
            "More commonly used in a game called The Streets, this script can still be used with normal radios.")
        source5 = tab5:ClipBoard("Source", function()
            setclipboard("https://raw.githubusercontent.com/vyks/vyks/main/Cyphrex.lua")
        end)
        executors5 = tab5:Executors({
            string.format(accepted, "Sw/Swm"),
            string.format(accepted, "Krnl"),
            string.format(accepted, "Syn"),
            string.format(accepted, "Fluxus"),
        })
        
        local tab6 = page2:Tab({Name = "Assetware"})
        execute6 = tab6:Execute("Execute!",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/Assetware.lua"))()
        end)
        local desc6 = tab6:Desc(
            "This is Assetware developted by someone unknown to me as doesn't seem to receive updates.")
        source6 = tab6:ClipBoard("Source", function()
            setclipboard("https://raw.githubusercontent.com/vyks/vyks/main/Assetware.lua")
        end)
        executors6 = tab6:Executors({
            string.format(accepted, "Sw"),
            string.format(declined, "Swm"),
            string.format(accepted, "Krnl"),
            string.format(accepted, "Syn"),
            string.format(accepted, "Fluxus"),
        })
        
        local tab7 = page2:Tab({Name = "Space"})
        execute7 = tab7:Execute("Execute!",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/SpaceHub.lua"))()
        end)
        local desc7 = tab7:Desc(
            "This is Space Hub developed by unknown and updates are unknown to me.")
        source7 = tab7:ClipBoard("Source", function()
            setclipboard("https://raw.githubusercontent.com/vyks/vyks/main/SpaceHub.lua")
        end)
        executors7 = tab7:Executors({
            string.format(accepted, "Sw/Swm"),
            string.format(accepted, "Krnl"),
            string.format(accepted, "Syn"),
            string.format(accepted, "Fluxus"),
        })
        
        local tab8 = page2:Tab({Name = "Kors"})
        execute8 = tab8:Execute("Execute!",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/KorsHub.lua"))()
        end)
        local desc8 = tab8:Desc(
            "This is Kors Hub developed by uknown and is unkown if updates are received.")
        discord8 = tab8:ClipBoard("Discord", function()
            setclipboard("https://discord.gg/QypVYevvUU")
        end)
        source8 = tab8:ClipBoard("Source", function()
            setclipboard("https://raw.githubusercontent.com/vyks/vyks/main/KorsHub.lua")
        end)
        executors8 = tab8:Executors({
            string.format(accepted, "Sw/Swm"),
            string.format(accepted, "Krnl"),
            string.format(accepted, "Syn"),
            string.format(accepted, "Fluxus"),
        })
    end
    coroutine.wrap(ZUASX_fake_script)()
