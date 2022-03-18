
function Client_PresentSettingsUI(rootParent)
	UI.CreateLabel(rootParent)
		.SetText('Limited to ' .. Mod.Settings.Limit .. 'Negative Armies Per Territory');
end

