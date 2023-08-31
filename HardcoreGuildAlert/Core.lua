local frame = CreateFrame('Frame')

frame:SetScript('OnEvent', function(_, event, arg1)
    if event == 'CHAT_MSG_GUILD_DEATHS' then
        PlaySound(8959)
        RaidNotice_AddMessage(RaidWarningFrame, arg1, ChatTypeInfo["GUILD_DEATHS"])
    end
end)

RaidWarningFrame:UnregisterEvent('GUILD_MEMBER_DIED')
frame:RegisterEvent('CHAT_MSG_GUILD_DEATHS')