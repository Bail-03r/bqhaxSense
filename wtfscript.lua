if game.PlaceId == 5989426850 then
    
    local old
    old = hookmetamethod(game,'__namecall',function(...)
        script = getcallingscript()
        if getnamecallmethod()=='BreakJoints' and tostring(script)=='ClientHandler' then
            return
        end
        return old(...)
    end)

    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 15
    wait(1)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
    
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("bqhaxSense", "DarkTheme")
    
    --aim
    local Tab = Window:NewTab("Aim")
    local Section = Tab:NewSection("Aim")
    
    --anti aim
    local Tab = Window:NewTab("Анти Аимы (скоро)")
    
    local Tab = Window:NewTab("Визуалы")
    local Section = Tab:NewSection("Tool")
    Section:NewButton("Огненые Тулы", "ААААА ГОРИТ", function()
    Instance.new('Fire',game:GetService("Players").LocalPlayer.Backpack.Bat.Handle)
    Instance.new('Fire',game:GetService("Players").LocalPlayer.Backpack.Bottle.Handle)
    end)
    
    --misc
    local Tab = Window:NewTab("Misc")
    
    local Section = Tab:NewSection("Movement")
    Section:NewButton("СпидиХак", "Когда Берёте Радио Вы Двигаетесь Быстрее", function()
    while game:GetService("RunService").RenderStepped:Wait() do
    local Tool = game.Players.LocalPlayer.Character:FindFirstChild("Radio")
    if Tool then
        game.Players.LocalPlayer.Character.ClientHandler.Disabled = true
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            wait(0.2)
            game.Players.LocalPlayer.Character.ClientHandler.Disabled = false
    end
    end
    end)
    
    Section:NewSlider("HipHeight", "Летайте без бана", 16, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = s
    end)
    
    --furry gaming here
    
    local Section = Tab:NewSection("Троллинг")
    Section:NewButton("Замарозить Фурри", "Нажми Если Фурри Захватил тебя", function()
        game.Players.LocalPlayer.Character.Humanoid:Destroy()
    end)
    
    Section:NewButton("Фурри", "Сделать человека фурри", function()
        game.Players.LocalPlayer.Character.Humanoid:Destroy()
    end)

    Section:NewButton("(Авто) Застанить Человека", "Нажми и тепнет чела в тюрьму", function()
        game.Players.LocalPlayer.Character.ChildAdded:Connect(function(what)
            if what.Name == "Weld" then
                wait()
                game.Players.LocalPlayer.Character["Humanoid"]:Destroy()
            end
        end)
    end)

    Section:NewButton("TEST", "TEST", function()
        cframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        cframe = tostring(cframe)
        setclipboard(cframe)
        game.Players.LocalPlayer.Character.ChildAdded:Connect(function(what)
            print(what)
        end)
    end)
    Section:NewButton("Моментально Заразить", "fixed", function()
        pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-756.764465, -10.8808384, -48.8336563)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end)
    
    local Section = Tab:NewSection("Tool")
    Section:NewButton("Выдать Тулы", "Выдаёт Вам Бесплатные Тулы", function()
        fireclickdetector(game:GetService("Workspace")["Bottle Buy"].ClickDetector)
        fireclickdetector(game:GetService("Workspace")["Bat Buy"].ClickDetector)
    end)
    Section:NewToggle("(Auto)Выдать Бутылку", "Выдаёт вам постоянно бутылку", function(state)
    
    end)
    
    local Section = Tab:NewSection("Goop")
    Section:NewButton("Анти Лужа", "Убирает Все Лужы С Говном", function()
        game:GetService("Workspace").Goop:Destroy()
    end)
    
    local Tab = Window:NewTab("Покупка")
    local Section = Tab:NewSection("Оружие(не весь список)")
    for i,v in pairs(workspace:GetChildren()) do
        if v.Name:find('Buy') then
            Section:NewButton(v.Name .. ' ' .. v.PriceLabel.TextLabel.Text, "да да я", function()
                print'fired'
                fireclickdetector(v.ClickDetector)
            end)
        end
    end

    local Tab = Window:NewTab("настройки")
    local Section = Tab:NewSection("пасхалка")

    Section:NewKeybind("Открытие Меню", "д.. д.. д.. даня?!", Enum.KeyCode.Insert, function()
    	Library:ToggleUI()
    end)

    Section:NewKeybind("Выдача Тулов", "эээ", Enum.KeyCode.T, function()
    	fireclickdetector(game:GetService("Workspace")["Bottle Buy"].ClickDetector)
        fireclickdetector(game:GetService("Workspace")["Bat Buy"].ClickDetector)
    end)
    
    Section:NewKeybind("Застанить Человека", "эээ", Enum.KeyCode.H, function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-680, 15, -9)
    end)
    Section:NewKeybind("Застанить Человека", "эээ", Enum.KeyCode.F, function()
        pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-756.764465, -10.8808384, -48.8336563)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end)
    
    Section:NewKeybind("ТП к выходу", "эээ", Enum.KeyCode.P, function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-226, 22.9941711, 27, -1, 0, 0, 0, 1, 0, 0, 0, -1)
        local ts = game:GetService("TeleportService")
        local p = game:GetService("Players").LocalPlayer
        ts:Teleport(game.PlaceId, p)
    end)
end

if game.PlaceId == 301549746 then
    loadstring(game:HttpGet("https://pastebin.com/raw/qDrQNMSh", true))()
end
