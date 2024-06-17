local Root = script.Parent.Parent
local Creator = require(Root.Creator)

local New = Creator.New
local Components = Root.Components

local Element = {}
Element.__index = Element
Element.__type = "Label"

function Element:New(Config)
	assert(Config.Text, "Label - Missing Title")

	--local LabelFrame = require(Components.Element)(Config.Text, Config.Description, self.Container, true)
				local UpdateLabel2 = {}

	local ButtonIco = New("ImageLabel", {
		Image = "rbxassetid://10709791437",
      Text = Config.Text,
		Size = UDim2.fromOffset(16, 16),
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(1, -10, 0.5, 0),
		BackgroundTransparency = 1,
		Parent = LabelFrame.Frame,
		ThemeTag = {
			ImageColor3 = "Text",
		},
	})



				function UpdateLabel2:UpdateLabel(name)
					LabelContent.Text = name
				end
				return UpdateLabel2

end

return Element
