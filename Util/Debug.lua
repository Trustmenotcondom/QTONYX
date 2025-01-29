task.spawn(function()
    hookfunction(require(game:GetService("ReplicatedStorage"):FindFirstChild("Effect"):FindFirstChild("Container"):FindFirstChild("Death")), function(...) return ... end)
    hookfunction(require(game:GetService("ReplicatedStorage"):FindFirstChild("Effect"):FindFirstChild("Container"):FindFirstChild("Respawn")), function(...) return ... end)
    hookfunction(require(game:GetService("ReplicatedStorage"):FindFirstChild("GuideModule")).ChangeDisplayedNPC, function(...) return ... end)
    require(game:GetService("ReplicatedStorage").Util:FindFirstChild("CameraShaker")):Stop()
    require(game:GetService("ReplicatedStorage").Modules.CombatUtil).CanCharacterMeleeAoe = newcclosure(function()
        return true
    end)
    require(game:GetService("ReplicatedStorage").Modules.CombatUtil).GetComboPaddingTime = newcclosure(function()
        return 0
    end)
    require(game:GetService("ReplicatedStorage").Modules.CombatUtil).GetDefaultAOEDelay = newcclosure(function()
        return 0
    end)
    require(game:GetService("ReplicatedStorage").Modules.CombatUtil).GetAttackCancelMultiplier = newcclosure(function()
        return 0
    end)
    require(game:GetService("ReplicatedStorage").Modules.CombatUtil).CanAttack = newcclosure(function()
        return true
    end)
end)
