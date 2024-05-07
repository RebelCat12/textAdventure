HealthPotion = {}

function HealthPotion.smallHeal(playerHealth)
    local healAmount = 10
    NewPlayerHealth = playerHealth + healAmount
    return NewPlayerHealth
end

function HealthPotion.mediumHeal(playerHealth)
    local healAmount = 30
    NewPlayerHealth = playerHealth + healAmount
    return NewPlayerHealth
end

function HealthPotion.largeHeal(playerHealth)
    local healAmount = 50
    NewPlayerHealth = playerHealth + healAmount
    return NewPlayerHealth
end

return HealthPotion