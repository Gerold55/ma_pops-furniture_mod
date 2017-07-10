local USES = 200 --how many times you can use the tool before it breaks.

minetest.register_tool('furniture_mod:hammer', {
	description = 'Hammer',
	inventory_image = 'fm_hammer.png',
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type ~= 'node' then
			return
		end
		local pos = pointed_thing.under
		local node = minetest.get_node(pos)
		local sofa_table = {
		{'black'},
		{'blue'},
		{'brown'},
		{'cyan'},
		{'dark_green'},
		{'dark_grey'},
		{'green'},
		{'grey'},
		{'magenta'},
		{'orange'},
		{'pink'},
		{'red'},
		{'violet'},
		{'white'},
		{'yellow'},
		}
	
		for i in ipairs (sofa_table) do
		local color = sofa_table[i][1]
	
			if node.name == 'furniture_mod:sofa_'..color then
				minetest.set_node(pos,{name = 'furniture_mod:sofa_r_'..color, param2=node.param2})
			end
			if node.name == 'furniture_mod:sofa_r_'..color then
				minetest.set_node(pos,{name = 'furniture_mod:sofa_m_'..color, param2=node.param2})
			end
			if node.name == 'furniture_mod:sofa_m_'..color then
				minetest.set_node(pos,{name = 'furniture_mod:sofa_l_'..color, param2=node.param2})
			end
			if node.name == 'furniture_mod:sofa_l_'..color then
				minetest.set_node(pos,{name = 'furniture_mod:sofa_c_'..color, param2=node.param2})
			end
			if node.name == 'furniture_mod:sofa_c_'..color then
				minetest.set_node(pos,{name = 'furniture_mod:sofa_'..color, param2=node.param2})
			end
		end
		if node.name == 'furniture_mod:wall_bookshelf_1' then
			minetest.set_node(pos,{name = 'furniture_mod:corner_bookshelf', param2=node.param2})
		end
		if node.name == 'furniture_mod:wall_bookshelf_2' then
			minetest.set_node(pos,{name = 'furniture_mod:corner_bookshelf', param2=node.param2})
		end
		if not minetest.setting_getbool("creative_mode") then
			itemstack:add_wear(65535 / (USES - 1))
		end
		return itemstack
	end,
	
	on_place = function(itemstack, user, pointed_thing)
		if pointed_thing.type ~= 'node' then
			return
		end
		local pos = pointed_thing.under
		local node = minetest.get_node(pos).name
		local para = minetest.get_node(pos).param2
		local newpara = para + 1
			if newpara > 3 then
			newpara = 0
			end
		minetest.set_node(pos,{name = ""..node, param2 = newpara})

		if not minetest.setting_getbool("creative_mode") then
			itemstack:add_wear(65535 / (USES - 1))
		end
		return itemstack
	end,
})

minetest.register_tool('furniture_mod:hammer_1', {
	description = 'Hammer 1',
	inventory_image = 'fm_hammer.png',
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type ~= 'node' then
			return
		end
		local pos = pointed_thing.under
		local node = minetest.get_node(pos)
		local table_table = { --material
		{'wood'},
		{'acacia_wood'},
		{'aspen_wood'},
		{'junglewood'},
		{'pine_wood'},
		{'cobble'}
		}
	
		for i in ipairs (table_table) do
		local mat = table_table[i][1]
	
			if node.name == 'furniture_mod:table_'..mat then
			minetest.set_node(pos,{name = 'furniture_mod:table_side_'..mat, param2=node.param2})
		end
		if node.name == 'furniture_mod:table_side_'..mat then
			minetest.set_node(pos,{name = 'furniture_mod:table_top_'..mat, param2=node.param2})
		end
		if node.name == 'furniture_mod:table_top_'..mat then
			minetest.set_node(pos,{name = 'furniture_mod:table_'..mat, param2=node.param2})
		end
			end
		if node.name == 'furniture_mod:counter_wall' then
			minetest.set_node(pos,{name = 'furniture_mod:counter_mid', param2=node.param2})
		end
		if node.name == 'furniture_mod:counter_mid' then
			minetest.set_node(pos,{name = 'furniture_mod:counter_mid_1', param2=node.param2})
		end
		if node.name == 'furniture_mod:counter_mid_1' then
			minetest.set_node(pos,{name = 'furniture_mod:counter_sink', param2=node.param2})
		end
		if node.name == 'furniture_mod:counter_sink' then
			minetest.set_node(pos,{name = 'furniture_mod:counter_wall', param2=node.param2})
			end
		if not minetest.setting_getbool("creative_mode") then
			itemstack:add_wear(65535 / (USES - 1))
		end
		return itemstack
	end,
	
	on_place = function(itemstack, user, pointed_thing)
		if pointed_thing.type ~= 'node' then
			return
		end
		local pos = pointed_thing.under
		local node = minetest.get_node(pos).name
		local para = minetest.get_node(pos).param2
		local newpara = para + 1
			if newpara > 3 then
			newpara = 0
			end
		minetest.set_node(pos,{name = ""..node, param2 = newpara})

		if not minetest.setting_getbool("creative_mode") then
			itemstack:add_wear(65535 / (USES - 1))
		end
		return itemstack
	end,
})

minetest.register_tool('furniture_mod:shears', {
	description = 'Shears',
	inventory_image = 'fm_shears.png',
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type ~= 'node' then
			return
		end
		local pos = pointed_thing.under
		local node = minetest.get_node(pos)
		local hedge_table = { --material
		{'leaves'},
		{'pine_needles'},
		{'jungleleaves'},
		{'acacia'}
		}
	
		for i in ipairs (hedge_table) do
		local mat = hedge_table[i][1]
	
			if node.name == 'furniture_mod:hedge_'..mat then
				minetest.set_node(pos,{name = 'furniture_mod:hedge_t_'..mat, param2=node.param2})
			end
			if node.name == 'furniture_mod:hedge_t_'..mat then
				minetest.set_node(pos,{name = 'furniture_mod:hedge_c_'..mat, param2=node.param2})
			end
			if node.name == 'furniture_mod:hedge_c_'..mat then
				minetest.set_node(pos,{name = 'furniture_mod:hedge_'..mat, param2=node.param2})
			end
		end
		if not minetest.setting_getbool("creative_mode") then
			itemstack:add_wear(65535 / (USES - 1))
		end
		return itemstack
	end,
	
	on_place = function(itemstack, user, pointed_thing)
		if pointed_thing.type ~= 'node' then
			return
		end
		local pos = pointed_thing.under
		local node = minetest.get_node(pos).name
		local para = minetest.get_node(pos).param2
		local newpara = para + 1
			if newpara > 3 then
			newpara = 0
			end
		minetest.set_node(pos,{name = ""..node, param2 = newpara})

		if not minetest.setting_getbool("creative_mode") then
			itemstack:add_wear(65535 / (USES - 1))
		end
		return itemstack
	end,
})

minetest.register_tool('furniture_mod:saw', {
	description = 'Saw',
	inventory_image = 'fm_saw.png',
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type ~= 'node' then
			return
		end
		local pos = pointed_thing.under
		local node = minetest.get_node(pos)
		local book_table = { --material
		{'bookshelf'},
		}
		
		for i in ipairs do
		local mat = book_table[i][1]
		
		if node.name == 'default:bookshelf'..mat then
				minetest.set_node(pos,{name = 'furniture_mod:wall_bookshelf'..mat, param2=node.param2})
			end
		end
		if not minetest.setting_getbool("creative_mode") then
			itemstack:add_wear(65535 / (USES - 1))
		end
		return itemstack
	end,
	
	on_place = function(itemstack, user, pointed_thing)
		if pointed_thing.type ~= 'node' then
			return
		end
		local pos = pointed_thing.under
		local node = minetest.get_node(pos).name
		local para = minetest.get_node(pos).param2
		local newpara = para + 1
			if newpara > 3 then
			newpara = 0
			end
		minetest.set_node(pos,{name = ""..node, param2 = newpara})

		if not minetest.setting_getbool("creative_mode") then
			itemstack:add_wear(65535 / (USES - 1))
		end
		return itemstack
	end,
})
