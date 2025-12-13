local ReplicatedStorage = game:GetService "ReplicatedStorage"
local vide_state = require(script.Parent.vide_state)
local vide = require(ReplicatedStorage.Packages.vide)
local create = vide.create

return function()
	return create "Frame" {
        Size = UDim2.fromScale(.5,.2),
        AnchorPoint = Vector2.new(.5,1),
        Position = UDim2.fromScale(.5,.9),
        create "TextButton" {
            Text = `{vide_state.counter()}`,
            Size = UDim2.fromScale(1,1),
            TextScaled = true,
            Activated = function()
                vide_state.counter(vide_state.counter()+2)
            end,
        }
    }
end
