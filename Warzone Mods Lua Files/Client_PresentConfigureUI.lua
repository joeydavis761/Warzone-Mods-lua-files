
function Client_PresentConfigureUI(rootParent)
	local limit = Mod.Settings.Limit;
	if limit == nil then limit = -1; end
    
	local vert = UI.CreateVerticalLayoutGroup(rootParent);

    local horz = UI.CreateHorizontalLayoutGroup(vert);
	UI.CreateLabel(horz).SetText('Attack/transfer limit');
    numberInputField = UI.CreateNumberInputField(horz)
		.SetSliderMinValue(-1)
		.SetSliderMaxValue(-15)
		.SetValue(limit);
end