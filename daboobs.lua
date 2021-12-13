local function notif(title, text, duration)
        game.StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration
        })
    end
--MENU GUNS
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() local Window = Library.CreateLib("bqhax|Sense| (Rewritten)", "DarkTheme") local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("")
Section:NewButton('Anti-stomp', "Reset For AntiStomp", function()
    game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
        local save = Instance.new('Part', workspace) save.Size = Vector3.new(1000,1000,1000) save.Anchored = true save.Transparency = .5 save.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        task.wait(3)
        save:Destroy()
    end)
end)

Section:NewButton('Kill All Seats', "For Getting Guns", function()
    for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Seat") then
           v:Destroy()
        end
    end
end)

local Tab = Window:NewTab("Guns")
local Section = Tab:NewSection("List:")
for i,v in pairs(workspace.Shop.Guns:GetDescendants()) do
    if v:IsA("ClickDetector") then
        Section:NewButton(v.Parent.Name..' | '..v.Parent.Level.Value, "Buy It", function()
            local tween = game:GetService("TweenService")
            local part = game.Players.LocalPlayer.Character.HumanoidRootPart
            local info = TweenInfo.new(
                3, --длина
                Enum.EasingStyle.Linear, --стиль
                Enum.EasingDirection.In, --направление
                0, --сколько раз
                false, --возращение
                0 --задержка
            )
            
            local go = 
                {
                    CFrame = v.Parent.Head.CFrame * CFrame.new(0,3,0)
                }
            
            tween:Create(part, info, go):Play()
        end)
    end
end

local Tab = Window:NewTab("Binds")
local Section = Tab:NewSection("List:")

Section:NewKeybind("For Spedyyy Not Prime", "Д.. д.. д.. даня?!", Enum.KeyCode.F, function()
    if game.Players.LocalPlayer.Character['I_LOADED_I']['K.O'].Value == true then
        local save = Instance.new('Part', workspace) save.Size = Vector3.new(1000,1000,1000) save.Anchored = true save.Transparency = .5 save.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        task.wait(3)
        save:Destroy()
    end
end)
