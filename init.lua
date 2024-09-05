---@type nxml
local nxml = dofile_once("mods/BetterVuoksikivi/nxml.lua")
local vuoksikivi = "data/entities/items/pickup/waterstone.xml"

local xml = nxml.parse(ModTextFileGetContent(vuoksikivi))

local new_child = nxml.new_element("MagicConvertMaterialComponent", {
	_tags="enabled_in_world,enabled_in_hand",
	kill_when_finished="1",
	from_material="",
	from_material_tag="[radioactive]",
	steps_per_frame="2",
	to_material="water",
	clean_stains="0",
	is_circle="1",
	radius="64" ,
	loop="1",
})

xml:add_child(new_child)

ModTextFileSetContent(vuoksikivi, tostring(xml))