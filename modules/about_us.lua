-- modules/about_us.lua
return function(Window)
    local Tab = Window:MakeTab({
        Name = "About Us 📢",
        Icon = "rbxassetid://123459",
        PremiumOnly = false
    })

    Tab:AddParagraph("Creator", "Script by DarkNatch")

    Tab:AddParagraph("Socials", [[
Discord: https://discord.gg/yourlink
YouTube: https://youtube.com/@yourchannel
Twitter: https://twitter.com/yourhandle
]])
end
