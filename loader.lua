if game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.InProgress then
        if queue_on_teleport then
            queue_on_teleport([[
                script_key = "]] .. script_key .. [["
                loadstring(game:HttpGet("https://raw.githubusercontent.com/6hug/Aurora/refs/heads/main/loader.lua"))()
            ]])
        end
    end
end) then end
