task.spawn(function()
    hookfunction(require(game:GetService("ReplicatedStorage"):FindFirstChild("Effect"):FindFirstChild("Container"):FindFirstChild("Death")), function(...) return ... end)
    hookfunction(require(game:GetService("ReplicatedStorage"):FindFirstChild("Effect"):FindFirstChild("Container"):FindFirstChild("Respawn")), function(...) return ... end)
    hookfunction(require(game:GetService("ReplicatedStorage"):FindFirstChild("GuideModule")).ChangeDisplayedNPC, function(...) return ... end)
    local CombatUtil = require(game:GetService("ReplicatedStorage").Modules.CombatUtil)
    hookfunction(CombatUtil.GetComboPaddingTime, function(...) return ... end)
    hookfunction(CombatUtil.GetDefaultAOEDelay, function(...) return ... end)
    hookfunction(CombatUtil.GetAttackCancelMultiplier, function(...) return ... end)
    hookfunction(CombatUtil.CanAttack, function(...) return ... end)
    require(game:GetService("ReplicatedStorage").Util:FindFirstChild("CameraShaker")):Stop()
end)

