
local frame = CreateFrame('Frame', 'HardcoreGuildAlertFrame')
local alertSound = 8959

frame:SetScript('OnEvent', function(self, event, arg1, arg2, arg3, arg4, ...)
    if (event == 'GUILD_MEMBER_DIED') then
        PlaySound(alertSound)
    end
end)


frame:RegisterEvent('GUILD_MEMBER_DIED')
