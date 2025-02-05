task.spawn(function()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local EffectContainer = ReplicatedStorage:FindFirstChild("Effect") and ReplicatedStorage.Effect:FindFirstChild("Container")

    if EffectContainer then
        local DeathEffect = EffectContainer:FindFirstChild("Death")
        local RespawnEffect = EffectContainer:FindFirstChild("Respawn")

        if DeathEffect then
            hookfunction(require(DeathEffect), function(...) return ... end)
        end
        if RespawnEffect then
            hookfunction(require(RespawnEffect), function(...) return ... end)
        end
    end

    local GuideModule = ReplicatedStorage:FindFirstChild("GuideModule")
    if GuideModule then
        hookfunction(require(GuideModule).ChangeDisplayedNPC, function(...) return ... end)
    end

    local CameraShaker = ReplicatedStorage:FindFirstChild("Util") and ReplicatedStorage.Util:FindFirstChild("CameraShaker")
    if CameraShaker then
        require(CameraShaker):Stop()
    end

    local CombatUtil = ReplicatedStorage:FindFirstChild("Modules") and ReplicatedStorage.Modules:FindFirstChild("CombatUtil")
    if CombatUtil then
        local combat = require(CombatUtil)
        combat.CanCharacterMeleeAoe = newcclosure(function() return true end)
        combat.GetComboPaddingTime = newcclosure(function() return 0 end)
        combat.GetDefaultAOEDelay = newcclosure(function() return 0 end)
        combat.GetAttackCancelMultiplier = newcclosure(function() return 0 end)
        combat.CanAttack = newcclosure(function() return true end)
    end
end)
