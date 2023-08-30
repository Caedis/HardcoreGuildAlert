local frame = CreateFrame('Frame')

frame:SetScript('OnEvent', function(_, event)
    if event == 'GUILD_MEMBER_DIED' then
        PlaySound(8959)
    end
end)

frame:RegisterEvent('GUILD_MEMBER_DIED')