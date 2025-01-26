task.spawn(function()
    hookfunction(require(game:GetService("ReplicatedStorage"):FindFirstChild("Effect"):FindFirstChild("Container"):FindFirstChild("Death")), function(...) return ... end)
    hookfunction(require(game:GetService("ReplicatedStorage"):FindFirstChild("Effect"):FindFirstChild("Container"):FindFirstChild("Respawn")), function(...) return ... end)
    hookfunction(require(game:GetService("ReplicatedStorage"):FindFirstChild("GuideModule")).ChangeDisplayedNPC, function(...) return ... end)
    require(game:GetService("ReplicatedStorage").Util:FindFirstChild("CameraShaker")):Stop()
end)

