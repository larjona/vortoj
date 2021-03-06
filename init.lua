local language = minetest.setting_get("language")

if io.open(minetest.get_modpath("vortoj").."/".. language ..".lua") then
	dofile(minetest.get_modpath("vortoj").."/".. language ..".lua")

	for _,item in ipairs(vortoj) do
		if minetest.registered_items[item[1]] and item[2] ~= "" then
			minetest.override_item(item[1], {description = item[2]})
		end
	end
end
