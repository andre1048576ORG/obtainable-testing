local ReplicatedStorage = game:GetService "ReplicatedStorage"
local vide_state = require(script.Parent.vide_state)
local vide = require(ReplicatedStorage.Packages.vide)
local create = vide.create

return function()
	return create "Frame" {
		Size = UDim2.fromScale(0.5, 0.2),
		BackgroundColor3 = Color3.new(0.403922, 0.780392, 0.094118),
		AnchorPoint = Vector2.new(0.5, 1),
		Position = UDim2.fromScale(0.5, 0.9),
		create "TextButton" {
			Text = `{vide_state.counter()}`,
			Size = UDim2.fromScale(1, 1),
			TextScaled = true,
			Activated = function()
				vide_state.counter(vide_state.counter() + 1)
			end,
		},
	}
end
