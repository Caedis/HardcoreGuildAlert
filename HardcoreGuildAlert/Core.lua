local frame = CreateFrame('Frame', 'HardcoreGuildAlertFrame')

frame:SetScript('OnEvent', function(_, event, arg1)
    if event == 'CHAT_MSG_GUILD_DEATHS' then
		local _, _b = string.split("[", arg1)
		local _name, _ = string.split("]", _b)
		local _, _npc = string.split(":", _text)
		local _npc, _ = string.split(".", _npc)
		local _, _npc = strsplit(" ", _npc, 2)

		for i = 1, GetNumGuildMembers() do
			local name, _, _, level, class_str, zone, _, _, _, _, class_id = GetGuildRosterInfo(i)
			local player_name_short, _ = string.split("-", name)
			if player_name_short == _name and level >= 5 then
				PlaySound(8959)
			end
		end
    end
end)

frame:RegisterEvent('CHAT_MSG_GUILD_DEATHS')