

local frame = CreateFrame('Frame', 'HardcoreGuildAlertFrame')
local alertSound = 8959

frame:SetScript('OnEvent', function(self, event, arg1, arg2, arg3, arg4, ...)
    if (event == 'GUILD_MEMBER_DIED') then
        local message = HARDCORE_GUILD_MEMBER_DEATH:format(arg1)

        PlaySound(alertSound)
		RaidNotice_AddMessage(RaidWarningFrame, message, ChatTypeInfo["GUILD_DEATHS"] )
    end
end)


RaidWarningFrame:UnregisterEvent('GUILD_MEMBER_DIED')
frame:RegisterEvent('GUILD_MEMBER_DIED')
