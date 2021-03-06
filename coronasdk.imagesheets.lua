-- This file is for use with CoronaSDK™ and was generated by Zwoptex (http://zwopple.com/zwoptex/)
--
-- For more details, see http://blog.anscamobile.com/2012/03/image-sheets-image-groups-and-sprites/

local sheet =
{
	frames = {
		{% for sprite in sprites %}
		{ x = {{ sprite.textureRectX }}, y = {{ sprite.textureRectY }}, width = {{ sprite.textureRectWidth }}, , height = {{ sprite.textureRectHeight }} }, -- {{ sprite.name }}		
		{% /for %}
	},

	sheetContentWidth = {{ metadata.sizeWidth }},
	sheetContentHeight = {{ metadata.sizeHeight }},
}
local frameindex =
{
	{% for sprite in spritesAndAliases %}
	"{{ sprite.name }}" = {{ currentLoop.currentIndex1 }},
	{% /for %}
}