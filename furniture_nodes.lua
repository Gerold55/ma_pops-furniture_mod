local stand_table = { --name, material, invimg
{'Wooden Nightstand', 'wood', 'fm_bedside_cabinet.png'},
{'Acacia Nightstand', 'acacia_wood', 'fm_bedside_cabinet_acacia.png'},
{'Aspen Nightstand', 'aspen_wood', 'fm_bedside_cabinet_aspen.png'},
{'Jungle Nightstand', 'junglewood', 'fm_bedside_cabinet_jungle.png'},
{'Pine Nightstand', 'pine_wood', 'fm_bedside_cabinet_pine.png'}
}

for i in ipairs (stand_table) do
	local name = stand_table[i][1]
	local material = stand_table[i][2]
	local invimg = stand_table[i][3]
	
minetest.register_node('furniture_mod:bedside_cabinet_' ..material, {
	description = name,
	drawtype = 'mesh',
	mesh = 'FM_bedside_cabinet.obj',
	tiles = {'default_'..material..'.png'},
	groups = {choppy=2,oddly_breakable_by_hand=2, furn=1, flammable=1},
	inventory_image = invimg,
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size('main', 8*4)
		inv:set_size('storage', 3*3)
		meta:set_string('formspec',
			'size [9,10]'..
			'bgcolor[#00000000;false]'..
			'background[4,4;0,0;default_wood.png;true]'..
			'list[current_name;storage;3,1.5;3,3;]'..
			'list[current_player;main;0.5,6.5;8,4;]')
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty('storage') and inv:is_empty('storage1')
	end,
})
end

local entertainment_unit_table = { --name, material, invimg
{'Wooden Entertainment Unit', 'wood'},
{'Acacia Entertainment Unit', 'acacia_wood'},
{'Aspen Entertainment Unit', 'aspen_wood'},
{'Jungle Entertainment Unit', 'junglewood'},
{'Pine Entertainment Unit', 'pine_wood'}
}

for i in ipairs (entertainment_unit_table) do
	local name = entertainment_unit_table[i][1]
	local material = entertainment_unit_table[i][2]
	local invimg = entertainment_unit_table[i][3]
	
minetest.register_node('furniture_mod:entertainment_unit_' ..material, {
	description = name,
	drawtype = 'nodebox',
	tiles = {'default_'..material..'.png'},
	groups = {choppy=2,oddly_breakable_by_hand=2, furn=1, flammable=1},
	inventory_image = invimg,
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.4375, -0.375, 0.4375, 0.5}, -- NodeBox5
			{0.375, -0.5, -0.4375, 0.4375, 0.4375, 0.5}, -- NodeBox6
			{-0.375, -0.5, 0.4375, 0.375, 0.4375, 0.5}, -- NodeBox7
			{-0.4375, -0.4375, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox8
			{-0.4375, 0.375, -0.4375, 0.4375, 0.4375, 0.4375}, -- NodeBox9
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5}, -- NodeBox10
			{-0.375, 0, -0.4375, 0.375, 0.0625, 0.4375}, -- NodeBox11
		}
	},
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size('main', 8*4)
		inv:set_size('storage', 3*3)
		meta:set_string('formspec',
			'size [9,10]'..
			'bgcolor[#00000000;false]'..
			'background[4,4;0,0;default_wood.png;true]'..
			'list[current_name;storage;3,1.5;3,3;]'..
			'list[current_player;main;0.5,6.5;8,4;]')
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty('storage') and inv:is_empty('storage1')
	end,
})
end

local shelf_table = { --name, material, invimg
{'Wooden Shelf', 'wood', 'shelf.png'},
{'Acacia Shelf', 'acacia_wood', 'acacia_shelf.png'},
{'Aspen Shelf', 'aspen_wood', 'aspen_shelf.png'},
{'Jungle Shelf', 'junglewood', 'jungle_shelf.png'},
{'Pine Shelf', 'pine_wood', 'pine_shelf.png'}
}

for i in ipairs (shelf_table) do
	local name = shelf_table[i][1]
	local material = shelf_table[i][2]
	local invimg = shelf_table[i][3]
	
minetest.register_node('furniture_mod:shelf_' ..material, {
	description = name,
	drawtype = 'mesh',
	mesh = 'shelf.obj',
	tiles = {'default_'..material..'.png'},
	groups = {choppy=2,oddly_breakable_by_hand=2, furn=1, flammable=1},
	inventory_image = invimg,
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size('main', 8*4)
		inv:set_size('storage', 3*3)
		meta:set_string('formspec',
			'size [9,10]'..
			'bgcolor[#00000000;false]'..
			'background[4,4;0,0;default_wood.png;true]'..
			'list[current_name;storage;3,1.5;3,3;]'..
			'list[current_player;main;0.5,6.5;8,4;]')
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty('storage') and inv:is_empty('storage1')
	end,
})
end

minetest.register_node('furniture_mod:bed', {
	description = "Bed",
	drawtype = 'mesh',
	mesh = 'FM_bed.obj',
	inventory_image= 'fm_bed.png',
	tiles = {'bed_text.png'},
	groups = {snappy=2, oddly_breakable_by_hand=2, flammable=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
})

local table_table = { --name, material, invimg
{'Stone Table', 'cobble', 'fm_table_stone.png'},
{'Wood Table', 'wood', 'fm_table_wood.png'},
{'Acacia Wood Table', 'acacia_wood', 'fm_table_wood_acacia.png'},
{'Aspen Wood Table', 'aspen_wood', 'fm_table_wood_aspen.png'},
{'Pine Wood Table', 'pine_wood', 'fm_table_wood_pine.png'},
{'Jungle Wood Table', 'junglewood', 'fm_table_wood_jungle.png'}
}

for i in ipairs (table_table) do
	local name = table_table[i][1]
	local material = table_table[i][2]
	local invimg = table_table[i][3]
	
minetest.register_node('furniture_mod:table_'..material, {
	description = name,
	drawtype = 'nodebox',
	tiles = {'default_'..material..'.png'},
	inventory_image = invimg,
	groups = {snappy=2, oddly_breakable_by_hand=2, furn=1, flammable=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.3125, 0.125}, -- NodeBox2
			{-0.5, 0.3125, -0.5, 0.5, 0.5, 0.5}, -- NodeBox3
		}
	}
})

minetest.register_node('furniture_mod:table_top_'..material, {
	description = name,
	drawtype = 'nodebox',
	tiles = {'default_'..material..'.png'},
	inventory_image = invimg,
	groups = {snappy=2, oddly_breakable_by_hand=2, not_in_creative_inventory=1, flammable=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	drop = 'furniture_mod:table_'..material,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.3125, -0.5, 0.5, 0.5, 0.5}, -- NodeBox32
		}
	}
})

minetest.register_node('furniture_mod:table_side_'..material, {
	description = name,
	drawtype = 'nodebox',
	tiles = {'default_'..material..'.png'},
	inventory_image = invimg,
	groups = {snappy=2, oddly_breakable_by_hand=2, not_in_creative_inventory=1, flammable=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	drop = 'furniture_mod:table_'..material,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.3125, -0.5, 0.5, 0.5, 0.5}, -- NodeBox32
			{0.1875, -0.5, -0.125, 0.4375, 0.3125, 0.125}, -- NodeBox33
		}
	}
})
end

local hedge_table = { --name, material, invimg
{'Hedge', 'leaves', 'itemhedgebasic.png'},
{'Pine Hedge', 'pine_needles', 'itemhedgespruce.png'},
{'Jungle Hedge', 'jungleleaves', 'itemhedgejungle.png'},
{'Acacia Hedge', 'acacia_leaves', 'itemhedgeacacia.png'},
{'Aspen Hedge', 'aspen_leaves', 'itemhedgeaspen.png'}
}

for i in ipairs (hedge_table) do
	local name = hedge_table[i][1]
	local material = hedge_table[i][2]
	local invimg = hedge_table[i][3]

minetest.register_node('furniture_mod:hedge_'..material, {
	description = name,
	drawtype = 'mesh',
	mesh = 'FM_hedge.obj',
	tiles = {'default_'..material..'.png'},
	inventory_image = invimg,
	groups = {snappy=2, oddly_breakable_by_hand=2, furn=1, flammable=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.6, -.5, -.25, .6, .35, .25},
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.6, -.5, -.25, .6, .35, .25},
		},
})

minetest.register_node('furniture_mod:hedge_c_'..material, {
	description = name,
	drawtype = 'mesh',
	mesh = 'FM_hedge_corner.obj',
	tiles = {'default_'..material..'.png'},
	inventory_image = invimg,
	groups = {snappy=2, oddly_breakable_by_hand=2, not_in_creative_inventory=1, flammable=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_leaves_defaults(),
	drop = 'furniture_mod:hedge_'..material,
	selection_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.25, .22, .35, .25},
			{-.2, -.5, -.25, .22, .35, -.5},
			}
		},
	collision_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.25, .22, .35, .25}, 
			{-.2, -.5, -.25, .22, .35, -.5},
			}
		},
})

minetest.register_node('furniture_mod:hedge_t_'..material, {
	description = name,
	drawtype = 'mesh',
	mesh = 'FM_hedge_t.obj',
	tiles = {'default_'..material..'.png'},
	inventory_image = invimg,
	groups = {snappy=2, oddly_breakable_by_hand=2, not_in_creative_inventory=1, flammable=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_leaves_defaults(),
	drop = 'furniture_mod:hedge_'..material,
	selection_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.25, .5, .35, .25},
			{-.2, -.5, -.25, .22, .35, -.5},
			}
		},
	collision_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.25, .22, .35, .25},
			{-.2, -.5, -.25, .22, .35, -.5},
			}
		},
})
end

local c_table = { --name, material, invimg
{'Wooden Coffee Table', 'wood', 'fm_table_c_wood.png'},
{'Aspen Coffee Table', 'aspen_wood', 'fm_table_c_aspen_wood.png'},
{'Jungle Coffee Table', 'junglewood', 'fm_table_c_junglewood.png'},
{'Acacia Coffee Table', 'acacia_wood', 'fm_table_c_acacia_wood.png'},
{'Pine Coffee Table', 'pine_wood', 'fm_table_c_pine_wood.png'},
{'Stone Coffee Table', 'cobble', 'fm_table_c_stone.png'},
}

for i in ipairs (c_table) do
	local name = c_table[i][1]
	local material = c_table[i][2]
	local invimg = c_table[i][3]

minetest.register_node('furniture_mod:table_c_'..material, {
	description = name,
	drawtype = 'mesh',
	mesh = 'FM_coffee_table.obj',
	tiles = {'default_'..material..'.png'},
	groups = {cracky=3, oddly_breakable_by_hand=2, furn=1},
	inventory_image = invimg,
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.5, -.5, -.5, .5, 0, .5}, 
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.5, -.5, -.5, .5, 0, .5},
		},
})
end

local chair_table = { --name, material, invimg
{'Stone Chair', 'cobble', 'fm_chair_stone.png'},
{'Wood Chair', 'wood', 'fm_chair_wood.png'},
{'Acacia Wood Chair', 'acacia_wood', 'fm_chair_acacia_wood.png'},
{'Aspen Wood Chair', 'aspen_wood', 'fm_chair_aspen_wood.png'},
{'Pine Wood Chair', 'pine_wood', 'fm_chair_pine_wood.png'},
{'Jungle Wood Chair', 'junglewood', 'fm_chair_junglewood.png'}
}

for i in ipairs (chair_table) do
	local name = chair_table[i][1]
	local material = chair_table[i][2]
	local invimg = chair_table[i][3]

minetest.register_node('furniture_mod:chair_'..material, {
	description = name,
	drawtype = 'mesh',
	mesh = 'FM_chair.obj',
	tiles = {'default_'..material..'.png'},
	groups = {choppy=2, oddly_breakably_by_hand=2, furn=1, flammable=1},
	inventory_image = invimg,
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
	on_rightclick = function(pos, node, clicker)
		furniture_mod.sit(pos, node, clicker)
		end,
	selection_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.5, .5, 0, .5},
			{-.5, 0, .5, .5, .6, .4},
			}
		},
	collision_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.5, .5, 0, .5},
			{-.5, 0, .5, .5, .6, .4},
			}
		},
})
end

local sofa_table = { --name, color, colorize(hex or color name:intensity(1-255))
{'Black', 'black', 'black:225'},
{'Blue', 'blue', 'blue:225'},
{'Brown', 'brown', 'brown:225'},
{'Cyan', 'cyan', 'cyan:200'},
{'Dark Green', 'dark_green', 'green:225'},
{'Dark Grey', 'dark_grey', 'black:200'},
{'Green', 'green', '#32cd32:150'},
{'Grey', 'grey', 'black:100'},
{'Magenta', 'magenta', 'magenta:200'},
{'Orange', 'orange', 'orange:225'},
{'Pink', 'pink', 'pink:225'},
{'Red', 'red', 'red:225'},
{'Violet', 'violet', 'violet:225'},
{'White', 'white', 'white:1'},
{'Yellow', 'yellow', 'yellow:225'},
}

for i in ipairs (sofa_table) do
	local name = sofa_table[i][1]
	local color = sofa_table[i][2]
	local hex = sofa_table[i][3]
	
minetest.register_node('furniture_mod:sofa_'..color, {
	description = name..' Sofa',
	drawtype = 'mesh',
	mesh = 'FM_sofa.obj',
	tiles = {'wool_'..color..'.png'},
	groups = {cracky=3, oddly_breakable_by_hand=2, flammable=1, furn=1},
	inventory_image = 'fm_sofa.png^[colorize:'..hex,
	paramtype = 'light',
	paramtype2 = 'facedir',
	on_rightclick = function(pos, node, clicker)
		furniture_mod.sit(pos, node, clicker)
		end,
	selection_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.5, .5, 0, .5}, --Right, Bottom, Back, Left, Top, Front
			{-.5, 0, .5, .5, .5, .2},
			{-.65, -.15, -.45, -.45, .3, .25}, --left
			{.65, -.15, -.45, .45, .3, .25}, --right
			},
		},
	collision_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.5, .5, 0, .5}, --base
			{-.5, 0, .5, .5, .5, .2}, --back
			{-.65, -.15, -.45, -.45, .3, .25}, --left
			{.65, -.15, -.45, .45, .3, .25}, --right
			},
		},
})

minetest.register_node('furniture_mod:sofa_l_'..color, {
	description = name..' Sofa',
	drawtype = 'mesh',
	mesh = 'FM_sofa_l.obj',
	tiles = {'wool_'..color..'.png'},
	groups = {cracky=3, oddly_breakable_by_hand=2, flammable=1, not_in_creative_inventory=1},
	drop = 'furniture_mod:sofa_'..color,
	paramtype = 'light',
	paramtype2 = 'facedir',
	selection_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.5, .5, 0, .5},
			{-.5, 0, .5, .5, .5, .2},
			{.65, -.15, -.45, .45, .3, .25},
			}
		},
	collision_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.5, .5, 0, .5},
			{-.5, 0, .5, .5, .5, .2},
			{.65, -.15, -.45, .45, .3, .25},
			}
		},
	on_rightclick = function(pos, node, clicker)
		furniture_mod.sit(pos, node, clicker)
		end,
})

minetest.register_node('furniture_mod:sofa_m_'..color, {
	description = name..' Sofa',
	drawtype = 'mesh',
	mesh = 'FM_sofa_m.obj',
	tiles = {'wool_'..color..'.png'},
	groups = {cracky=3, oddly_breakable_by_hand=2, flammable=1, not_in_creative_inventory=1},
	drop = 'furniture_mod:sofa_'..color,
	paramtype = 'light',
	paramtype2 = 'facedir',
	selection_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.5, .5, 0, .5},
			{-.5, 0, .5, .5, .5, .2},
			}
		},
	collision_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.5, .5, 0, .5},
			{-.5, 0, .5, .5, .5, .2},
			}
		},
	on_rightclick = function(pos, node, clicker)
		furniture_mod.sit(pos, node, clicker)
		end,
})

minetest.register_node('furniture_mod:sofa_r_'..color, {
	description = name..' Sofa',
	drawtype = 'mesh',
	mesh = 'FM_sofa_r.obj',
	tiles = {'wool_'..color..'.png'},
	groups = {cracky=3, oddly_breakable_by_hand=2, flammable=1, not_in_creative_inventory=1},
	drop = 'furniture_mod:sofa_'..color,
	paramtype = 'light',
	paramtype2 = 'facedir',
	selection_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.5, .5, 0, .5},
			{-.5, 0, .5, .5, .5, .2},
			{-.65, -.15, -.45, -.45, .3, .25},
			}
		},
	collision_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.5, .5, 0, .5},
			{-.5, 0, .5, .5, .5, .2},
			{-.65, -.15, -.45, -.45, .3, .25},
			}
		},
	on_rightclick = function(pos, node, clicker)
		furniture_mod.sit(pos, node, clicker)
		end,
})

minetest.register_node('furniture_mod:sofa_c_'..color, {
	description = name..' Sofa',
	drawtype = 'mesh',
	mesh = 'FM_sofa_c.obj',
	tiles = {'wool_'..color..'.png'},
	groups = {cracky=3, oddly_breakable_by_hand=2, flammable=1, not_in_creative_inventory=1, furn=1},
	drop = 'furniture_mod:sofa_'..color,
	paramtype = 'light',
	paramtype2 = 'facedir',
	selection_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.5, .5, 0, .5}, --bottom
			{-.5, 0, .5, .5, .5, .2}, --back
			{.2, 0, -.5, .5, .5, .2}, --side
			}
		},
	collision_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.5, .5, 0, .5},
			{-.5, 0, .5, .5, .5, .2},
			}
		},
	on_rightclick = function(pos, node, clicker)
		furniture_mod.sit(pos, node, clicker)
		end
})
end

minetest.register_node('furniture_mod:mailbox', {
	description = 'Mailbox',
	drawtype = 'mesh',
	mesh = 'FM_mailbox.obj',
	tiles = {'default_wood.png'},
	groups = {choppy=2, oddly_breakable_by_hand=2, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {
			{-.1, -.5, -.18, .1, .65, .02},
			{-.2, .65, -.4, .2, .95, .3}
			},
		},
	collision_box = {
		fixed = {
			{-.1, -.5, -.18, .1, .65, .02},
			{-.2, .65, -.4, .2, .95, .3}
			},
		},
})

minetest.register_node('furniture_mod:birdbath', {
	description = 'Birdbath',
	drawtype = 'mesh',
	mesh = 'FM_birdbath.obj',
	inventory_image = 'itembirdbath.png',
	tiles = {{name='default_stone.png'},{name='default_water_source_animated.png', animation={type='vertical_frames', aspect_w=16, aspect_h=16, length=2.0}}},
	groups = {cracky=2, oddly_breakable_by_hand=5, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node('furniture_mod:cup', {
	description = 'Glass Cup',
	drawtype = 'nodebox',
	tiles = {{name="default_coral_skeleton.png"}},
	groups = {cracky=2, oddly_breakable_by_hand=5, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, -0.4375, 0.125}, -- NodeBox1
			{-0.125, -0.5, 0.125, 0.125, -0.0625, 0.1875}, -- NodeBox2
			{0.125, -0.5, -0.1875, 0.1875, -0.0625, 0.1875}, -- NodeBox3
			{-0.1875, -0.5, -0.1875, -0.125, -0.0625, 0.1875}, -- NodeBox4
			{-0.125, -0.5, -0.1875, 0.125, -0.0625, -0.125}, -- NodeBox5
		}
	}
})

minetest.register_node('furniture_mod:stone_path_1', {
	description = 'Stone Path',
	drawtype = 'mesh',
	mesh = 'FM_stone_path_1.obj',
	tiles = {'default_stone.png'},
	groups = {cracky=2, oddly_breakable_by_hand=5, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.5, -.5, -.5, .5, -.4, .5},
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.5, -.5, -.5, .5, -.4, .5},
		},
	on_place = function(itemstack, placer, pointed_thing)
		local stack = ItemStack("furniture_mod:stone_path_" .. math.random(1,4))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("furniture_mod:stone_path_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 4 do
minetest.register_node('furniture_mod:stone_path_'..i, {
	description = 'Stone Path',
	drawtype = 'mesh',
	mesh = 'FM_stone_path_'..i..'.obj',
	tiles = {'default_stone.png'},
	groups = {cracky=2, oddly_breakable_by_hand=5, furn=1, not_in_creative_inventory=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	drop = 'furniture_mod:stone_path_1',
	selection_box = {
		type = 'fixed',
		fixed = {-.5, -.5, -.5, .5, -.4, .5},
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.5, -.5, -.5, .5, -.4, .5},
		},
})
end

minetest.register_node('furniture_mod:fireplace', {
	description = 'Fireplace',
	drawtype = 'mesh',
	mesh = 'FM_fireplace_off.obj',
	inventory_image = 'FM_fireplace.png',
	tiles = {{name='default_brick.png'},{name='xpanes_bar.png'}},
	groups = {cracky=2, oddly_breakable_by_hand=6, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
			local meta = minetest.env:get_meta(pos)
			local inv = meta:get_inventory()
			inv:set_size('fuel', 1)
			inv:set_size('main', 8*4)
			meta:set_string('formspec', furniture_mod.fireplace_formspec)
			meta:set_string('infotext', 'Fireplace')
		end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty('fuel')
	end,
})

minetest.register_node('furniture_mod:fireplace_on', {
	description = 'Fireplace',
	drawtype = 'mesh',
	mesh = 'FM_fireplace_on.obj',
	drops = 'furniture_mod:fireplace',
	tiles = {{name='default_brick.png'},{name='xpanes_bar.png'},{name='default_tree.png'},{name='fire_basic_flame_animated.png', animation={type='vertical_frames', aspect_w=16, aspect_h=16, length=1}}},
	groups = {cracky=2, oddly_breakable_by_hand=3, furn=1, not_in_creative_inventory=1},
	light_source = 14,
	paramtype = 'light',
	paramtype2 = 'facedir',
	drops = 'furniture_mod:fireplace',
	sounds = default.node_sound_stone_defaults(),
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty('fuel')
	end,
})

minetest.register_node('furniture_mod:curtain_open', {
	description = 'Curtains',
	drawtype = 'mesh',
	mesh = 'curtain_open.obj',
	tiles = {'curtains_open.png'},
	groups = {cracky=2, oddly_breakable_by_hand=3, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sunlight_propagates = true,
	sounds = default.node_sound_wood_defaults(),
	on_rightclick = function(pos, node, puncher)
		minetest.env:add_node(pos, {name = "furniture_mod:curtain_closed", param2 = node.param2})
		furniture_mod_window_operate( pos, "furniture_mod:curtain_open", "furniture_mod:curtain_closed" );
		end,
	selection_box = {
		type = 'fixed',
		fixed = {-.5, -.5, .4, .5, .5, .5},
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.5, -.5, .4, .5, .5, .5},
		},
})

minetest.register_node('furniture_mod:curtain_closed', {
	description = 'Closed Curtains',
	drawtype = 'mesh',
	mesh = 'curtain_closed.obj',
	inventory_image = 'wool_red.png',
	drop = 'furniture_mod:curtain_open',
	tiles = {name='wool_red.png'},
	groups = {cracky=2, oddly_breakable_by_hand=3, furn=1, not_in_creative_inventory=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sunlight_propagates = false,
	sounds = default.node_sound_wood_defaults(),
	on_rightclick = function(pos, node, puncher)
		minetest.env:add_node(pos, {name = "furniture_mod:curtain_open", param2 = node.param2})
        furniture_mod_window_operate( pos, "furniture_mod:curtain_closed", "furniture_mod:curtain_open" );
		end,
	selection_box = {
		type = 'fixed',
		fixed = {-.5, -.5, .4, .5, .5, .5},
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.5, -.5, .4, .5, .5, .5},
		},
})

minetest.register_node('furniture_mod:blinds_open', {
	description = 'Blinds',
	drawtype = 'mesh',
	mesh = 'blinds_open.obj',
	inventory_image = 'blinds_open.png',
	tiles = {name='default_wood.png'},
	groups = {cracky=2, oddly_breakable_by_hand=3, furn=1, flammable=1},
	sunlight_propagates = true,
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
    on_rightclick = function(pos, node, puncher)
		minetest.env:add_node(pos, {name = "furniture_mod:blinds_closed", param2 = node.param2})
        furniture_mod_window_operate( pos, "furniture_mod:blinds_open", "furniture_mod:blinds_closed" );
		end,
		selection_box = {
		type = 'fixed',
		fixed = {-.5, -.5, .4, .5, .5, .5},
		},
		collision_box = {
		type = 'fixed',
		fixed = {-.5, -.5, .4, .5, .5, .5},
		},
})

minetest.register_node('furniture_mod:blinds_closed', {
	description = 'Closed Blinds',
	drawtype = 'mesh',
	mesh = 'blinds_closed.obj',
	inventory_image = 'default_wood.png',
	drop = 'furniture_mod:blinds_open',
	tiles = {name='default_wood.png'},
	groups = {cracky=2, oddly_breakable_by_hand=3, furn=1, not_in_creative_inventory=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sunlight_propagates = false,
	sounds = default.node_sound_wood_defaults(),
	on_rightclick = function(pos, node, puncher)
		minetest.env:add_node(pos, {name = "furniture_mod:blinds_open", param2 = node.param2})
        furniture_mod_window_operate( pos, "furniture_mod:blinds_closed", "furniture_mod:blinds_open" );
        end,
		selection_box = {
		type = 'fixed',
		fixed = {-.5, -.5, .4, .5, .5, .5},
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.5, -.5, .4, .5, .5, .5},
		},
})

local fence_texture = "FM_fence_overlay.png^default_steel_block.png^FM_fence_overlay.png^[makealpha:255,126,126"
minetest.register_node("furniture_mod:fence", {
	description = "Picket Fence",
	drawtype = "nodebox",
	tiles = {"default_steel_block.png"},
	inventory_image = fence_texture,
	wield_image = fence_texture,
	paramtype = "light",
	drop = 'furniture_mod:fence',
	is_ground_content = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, 0.3125, 0.0625, 0.5, 0.4375}, -- NodeBox1
			{-0.0625, -0.5, -0.4375, 0.0625, 0.5, -0.3125}, -- NodeBox2
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625}, -- NodeBox3
			{-0.0625, -0.4375, -0.5, 0.0625, -0.3125, 0.5}, -- NodeBox4
			{-0.0625, 0.25, -0.5, 0.0625, 0.375, 0.5}, -- NodeBox5
		}
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2},
	sounds = default.node_sound_wood_defaults(),
})

local fence_texture = "FM_fence_overlay.png^default_steel_block.png^FM_fence_overlay.png^[makealpha:255,126,126"
minetest.register_node("furniture_mod:fence_2", {
	description = "Picket Fence",
	drawtype = "nodebox",
	tiles = {"default_steel_block.png"},
	inventory_image = fence_texture,
	wield_image = fence_texture,
	paramtype = "light",
	drop = 'furniture_mod:fence',
	is_ground_content = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.0625, -0.3125, 0.5, 0.0625}, -- NodeBox1
			{0.3125, -0.5, -0.0625, 0.4375, 0.5, 0.0625}, -- NodeBox2
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625}, -- NodeBox3
			{-0.5, -0.4375, -0.0625, 0.5, -0.3125, 0.0625}, -- NodeBox4
			{-0.5, 0.25, -0.0625, 0.5, 0.375, 0.0625}, -- NodeBox5
		}
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
})

local fence_texture = "FM_fence_overlay.png^default_steel_block.png^FM_fence_overlay.png^[makealpha:255,126,126"
minetest.register_node('furniture_mod:fence_c', {
	description = "Picket Fence",
	drawtype = 'nodebox',
	tiles = {'default_steel_block.png'},
	inventory_image = fence_texture,
	wield_image = fence_texture,
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, not_in_creative_inventory=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
	drop = 'furniture_mod:fence',
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.4375, 0.0625, 0.5, -0.3125}, -- NodeBox20
			{0.3125, -0.5, -0.0625, 0.4375, 0.5, 0.0625}, -- NodeBox21
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625}, -- NodeBox22
			{-0.0625, 0.25, -0.5, 0.0625, 0.375, 0.0625}, -- NodeBox23
			{-0.0625, 0.25, -0.0625, 0.5, 0.375, 0.0625}, -- NodeBox24
			{-0.0625, -0.4375, -0.5, 0.0625, -0.3125, 0.0625}, -- NodeBox25
			{-0.0625, -0.4375, -0.0625, 0.5, -0.3125, 0.0625}, -- NodeBox26
		}
	}
})

local fence_texture = "FM_fence_overlay.png^default_steel_block.png^FM_fence_overlay.png^[makealpha:255,126,126"
minetest.register_node('furniture_mod:fence_t', {
	description = "Picket Fence",
	drawtype = 'nodebox',
	tiles = {'default_steel_block.png'},
	inventory_image = fence_texture,
	wield_image = fence_texture,
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, not_in_creative_inventory=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
	drop = 'furniture_mod:fence',
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625}, -- NodeBox1
			{-0.0625, -0.5, -0.5, 0.0625, 0.5, -0.375}, -- NodeBox8
			{-0.5, -0.5, -0.0625, -0.375, 0.5, 0.0625}, -- NodeBox9
			{0.375, -0.5, -0.0625, 0.5, 0.5, 0.0625}, -- NodeBox10
			{-0.5, -0.4375, -0.0625, 0.5, -0.3125, 0.0625}, -- NodeBox12
			{-0.0625, -0.4375, -0.5, 0.0625, -0.3125, 0.0625}, -- NodeBox13
			{-0.0625, 0.25, -0.5, 0.0625, 0.375, 0.0625}, -- NodeBox14
			{-0.5, 0.25, -0.0625, 0.5, 0.375, 0.0625}, -- NodeBox15
		}
	}
})

local songs = { "spongebob_squarepants",
"tobymac"
}

minetest.register_node("furniture_mod:radio", {
    description = "Radio",
    drawtype = "mesh",
	mesh = "radio.obj",
    tiles = {"radio_text.png"},
	inventory_image = "radio.png",
    paramtype = "light",
    paramtype2 = "facedir",
    stack_max = 1,
    groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2},
    sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.4, -.5, -.2, .4, -.1, .2},  -- Right, Bottom, Back, Left, Top, Front
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.4, -.5, -.2, .4, -.1, .2},
		},
    on_rightclick = function(pos, node, clicker, itemstack)
    local meta = minetest.env:get_meta(pos)
    if string.len(meta:get_string("hwnd")) > 0 then
        minetest.sound_stop(meta:get_string("hwnd"))
        meta:set_string("hwnd",nil)
    else
        meta:set_string("hwnd",minetest.sound_play("radio_" .. songs[math.random(1,#songs)], {gain = 0.5, max_hear_distance = 25}))
    end
    end,
    on_destruct = function(pos)
    local meta = minetest.env:get_meta(pos)
    if string.len(meta:get_string("hwnd")) > 0 then minetest.sound_stop(meta:get_string("hwnd")) end
    end,
})

minetest.register_node('furniture_mod:tv_nc', {
	description = 'TV',
	drawtype = 'mesh',
	mesh = 'FM_TV.obj',
	inventory_image = 'FM_TV.png',
	drop = 'furniture_mod:tv_off',
	tiles = {{name='default_tree.png'},{name='Nyan_cat.png', animation={type='vertical_frames', aspect_w=94, aspect_h=97, length=3}}},
	groups = {cracky=2, oddly_breakable_by_hand=3, not_in_creative_inventory=1, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	light_source = 15,
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.4, -.5, -.2, .4, -.1, .2},  -- Right, Bottom, Back, Left, Top, Front
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.4, -.5, -.2, .4, -.1, .2},
		},
	 on_rightclick = function(pos, node, clicker, itemstack)
    local meta = minetest.env:get_meta(pos)
	node.name = "furniture_mod:tv_static"
		minetest.set_node(pos, node)
    if string.len(meta:get_string("hwnd")) > 0 then
        minetest.sound_stop(meta:get_string("hwnd"))
        meta:set_string("hwnd",nil)
    else
        meta:set_string("hwnd",minetest.sound_play("doorbell", {gain = 0.5, max_hear_distance = 25}))
    end
    end,
    on_destruct = function(pos)
    local meta = minetest.env:get_meta(pos)
    if string.len(meta:get_string("hwnd")) > 0 then minetest.sound_stop(meta:get_string("hwnd")) end
    end,
})

minetest.register_node('furniture_mod:tv_static', {
	description = 'TV',
	drawtype = 'mesh',
	mesh = 'FM_TV.obj',
	inventory_image = 'FM_TV.png',
	drop = 'furniture_mod:tv_off',
	tiles = {{name='default_tree.png'},{name='static.png', animation={type='vertical_frames', aspect_w=40, aspect_h=30, length=1}}},
	groups = {cracky=2, oddly_breakable_by_hand=3, not_in_creative_inventory=1, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	light_source = 15,
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.4, -.5, -.2, .4, -.1, .2},  -- Right, Bottom, Back, Left, Top, Front
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.4, -.5, -.2, .4, -.1, .2},
		},
	 on_rightclick = function(pos, node, clicker, itemstack)
    local meta = minetest.env:get_meta(pos)
	node.name = "furniture_mod:tv_cube"
		minetest.set_node(pos, node)
    if string.len(meta:get_string("hwnd")) > 0 then
        minetest.sound_stop(meta:get_string("hwnd"))
        meta:set_string("hwnd",nil)
    else
        meta:set_string("hwnd",minetest.sound_play("glass", {gain = 0.5, max_hear_distance = 25}))
    end
    end,
    on_destruct = function(pos)
    local meta = minetest.env:get_meta(pos)
    if string.len(meta:get_string("hwnd")) > 0 then minetest.sound_stop(meta:get_string("hwnd")) end
    end,
})

minetest.register_node('furniture_mod:tv_cube', {
	description = 'TV',
	drawtype = 'mesh',
	mesh = 'FM_TV.obj',
	inventory_image = 'FM_TV.png',
	drop = 'furniture_mod:tv_off',
	tiles = {{name='default_tree.png'},{name='fm_cube.png', animation={type='vertical_frames', aspect_w=40, aspect_h=40, length=2}}},
	groups = {cracky=2, oddly_breakable_by_hand=3, not_in_creative_inventory=1, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	light_source = 15,
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.4, -.5, -.2, .4, -.1, .2},  -- Right, Bottom, Back, Left, Top, Front
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.4, -.5, -.2, .4, -.1, .2},
		},
	 on_rightclick = function(pos, node, clicker, itemstack)
    local meta = minetest.env:get_meta(pos)
	node.name = "furniture_mod:tv_off"
		minetest.set_node(pos, node)
    if string.len(meta:get_string("hwnd")) > 0 then
        minetest.sound_stop(meta:get_string("hwnd"))
        meta:set_string("hwnd",nil)
    end
    end,
    on_destruct = function(pos)
    local meta = minetest.env:get_meta(pos)
    if string.len(meta:get_string("hwnd")) > 0 then minetest.sound_stop(meta:get_string("hwnd")) end
    end,
})

minetest.register_node('furniture_mod:tv_off', {
	description = 'TV',
	drawtype = 'mesh',
	mesh = 'FM_TV.obj',
	inventory_image = 'FM_TV.png',
	tiles = {{name='default_tree.png'},{name='wool_black.png',}},
	groups = {cracky=2, oddly_breakable_by_hand=3, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	light_source = 1,
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.45, -.5, -.5, .45, .4, .45},  -- Right, Bottom, Back, Left, Top, Front
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.45, -.5, -.5, .45, .4, .45},
		},
	on_rightclick = function(pos, node, clicker, itemstack)
    local meta = minetest.env:get_meta(pos)
	node.name = "furniture_mod:tv_nc"
		minetest.set_node(pos, node)
    if string.len(meta:get_string("hwnd")) > 0 then
        minetest.sound_stop(meta:get_string("hwnd"))
        meta:set_string("hwnd",nil)
    else
        meta:set_string("hwnd",minetest.sound_play("nyan_cat", {gain = 0.5, max_hear_distance = 25}))
    end
    end,
    on_destruct = function(pos)
    local meta = minetest.env:get_meta(pos)
    if string.len(meta:get_string("hwnd")) > 0 then minetest.sound_stop(meta:get_string("hwnd")) end
    end,
})

minetest.register_node('furniture_mod:toilet_open', {
	description = 'Toilet',
	drawtype = 'mesh',
	mesh = 'FM_toilet_open.obj',
	tiles = {{name='default_clay.png'},{name='default_wood.png'}},
	groups = {choppy=2, oddly_breakably_by_hand=2, furn=1, not_in_creative_inventory=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {
			{-.35, -.5, -.35, .35, 0, .5}, -- Right, Bottom, Back, Left, Top, Front
			{-.35, 0, .2, .35, .5, .5},
			}
		},
	collision_box = {
		fixed = {
			{-.35, -.5, -.35, .35, 0, .5}, -- Right, Bottom, Back, Left, Top, Front
			{-.35, 0, .2, .35, .5, .5},
			}
		},
	on_rightclick = function(pos, node, clicker)
		furniture_mod.sit(pos, node, clicker)
		end,
	on_punch = function (pos, node, puncher)
		node.name = "furniture_mod:toilet_close"
		minetest.set_node(pos, node)
	end,
})

minetest.register_node('furniture_mod:toilet_close', {
	description = 'Toilet',
	drawtype = 'mesh',
	mesh = 'FM_toilet_close.obj',
	tiles = {{name='default_clay.png'},{name='default_wood.png'}},
	groups = {choppy=2, oddly_breakably_by_hand=2, furn=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {
			{-.35, -.5, -.35, .35, 0, .5}, -- Right, Bottom, Back, Left, Top, Front
			{-.35, 0, .2, .35, .5, .5},
			}
		},
	collision_box = {
		fixed = {
			{-.35, -.5, -.35, .35, 0, .5}, -- Right, Bottom, Back, Left, Top, Front
			{-.35, 0, .2, .35, .5, .5},
			}
		},
	on_rightclick = function(pos, node, clicker)
		furniture_mod.sit(pos, node, clicker)
		end,
	on_punch = function (pos, node, puncher)
		node.name = "furniture_mod:toilet_open"
		minetest.set_node(pos, node)
	end,
})

minetest.register_node('furniture_mod:trash_can', {
	description = 'Trash Can',
	drawtype = 'mesh',
	mesh = 'FM_trashcan.obj',
	tiles = {'default_steel_block.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.3, -.5, -.3, .3, .25, .3}, 
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.3, -.5, -.3, .3, .25, .3},
		},
		on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
			"size[8,9]" ..
			"button[0,0;2,1;empty;Empty Trash]" ..
			"list[context;trashlist;3,1;2,3;]" ..
			"list[current_player;main;0,5;8,4;]"
		)
		meta:set_string("infotext", "Trash Can")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
		inv:set_size("trashlist", 2*3)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
				return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff in trash can at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff to trash can at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes stuff from trash can at " .. minetest.pos_to_string(pos))
	end,
	on_receive_fields = function(pos, formname, fields, sender)
		if fields.empty then
			local meta = minetest.get_meta(pos)
			local inv = meta:get_inventory()
			inv:set_list("trashlist", {})
			minetest.sound_play("trash", {to_player=sender:get_player_name(), gain = 1.0})
			minetest.log("action", sender:get_player_name() ..
				" empties trash can at " .. minetest.pos_to_string(pos))
		end
	end
})

minetest.register_node('furniture_mod:lamp', {
	description = 'Lamp',
	drawtype = 'mesh',
	mesh = 'FM_lamp.obj',
	tiles = {'lamp_text.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1, not_in_creative_inventory=1},
	light_source =  default.LIGHT_MAX,
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	drop= 'furniture_mod:lamp_off',
	selection_box = {
		type = 'fixed',
		fixed = {-.35, -.5, -.35, .35, .25, .35}, -- Right, Bottom, Back, Left, Top, Front
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.35, -.5, -.35, .35, .25, .35}, -- Right, Bottom, Back, Left, Top, Front
		},
	on_rightclick = function (pos, node, puncher)
		node.name = "furniture_mod:lamp_off"
		minetest.set_node(pos, node)
	end,
})

minetest.register_node('furniture_mod:lamp_off', {
	description = 'Lamp',
	drawtype = 'mesh',
	mesh = 'FM_lamp.obj',
	inventory_image= 'lamp.png',
	tiles = {'lamp_text.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.35, -.5, -.35, .35, .25, .35}, 
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.35, -.5, -.35, .35, .25, .35},
		},
	on_rightclick = function (pos, node, puncher)
		node.name = "furniture_mod:lamp"
		minetest.set_node(pos, node)
	end,
})

minetest.register_node('furniture_mod:lamp_floor', {
	description = 'Floor Lamp',
	drawtype = 'mesh',
	mesh = 'FM_lamp_floor.obj',
	tiles = {'lamp_floor_text.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1, flammable=1, not_in_creative_inventory=1},
	light_source =  default.LIGHT_MAX,
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	drop= 'furniture_mod:lamp_floor_off',
	on_rightclick = function (pos, node, puncher)
		node.name = "furniture_mod:lamp_floor_off"
		minetest.set_node(pos, node)
	end,
})

minetest.register_node('furniture_mod:lamp_floor_off', {
	description = 'Floor Lamp',
	drawtype = 'mesh',
	mesh = 'FM_lamp_floor.obj',
	tiles = {'lamp_floor_text.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1, flammable=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	on_rightclick = function (pos, node, puncher)
		node.name = "furniture_mod:lamp_floor"
		minetest.set_node(pos, node)
	end,
})

minetest.register_node('furniture_mod:ceiling_light_off', {
	description = 'Ceiling Light',
	drawtype = 'mesh',
	mesh = 'FM_ceiling_light.obj',
	tiles = {'ceiling_light_side.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1, flammable=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	on_rightclick = function (pos, node, puncher)
		node.name = "furniture_mod:ceiling_light"
		minetest.set_node(pos, node)
	end,
})

minetest.register_node('furniture_mod:ceiling_light', {
	description = 'Ceiling Light',
	drawtype = 'mesh',
	mesh = 'FM_ceiling_light.obj',
	tiles = {'ceiling_light_side.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1, flammable=1, not_in_creative_inventory=1},
	light_source =  default.LIGHT_MAX,
	paramtype = 'light',
	paramtype2 = 'facedir',
	drop = 'furniture_mod:ceiling_light_off',
	sounds = default.node_sound_stone_defaults(),
	on_rightclick = function (pos, node, puncher)
		node.name = "furniture_mod:ceiling_light_off"
		minetest.set_node(pos, node)
	end,
})

minetest.register_node('furniture_mod:computer', {
	description = 'Computer',
	drawtype = 'mesh',
	mesh = 'FM_computer.obj',
	tiles = {'computertex.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.5, -.5, -.5, .5, .4, .5}, 
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.5, -.5, -.5, .5, .4, .5},
		},
})

minetest.register_node('furniture_mod:counter_wall', {
	description = 'Counter',
	drawtype = 'mesh',
	mesh = 'FM_counter_wall.obj',
	tiles = {'counter_text.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1, not_in_creative_inventory=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	drop = 'furniture_mod:counter',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node('furniture_mod:counter_mid', {
	description = 'Counter',
	drawtype = 'mesh',
	mesh = 'FM_counter_mid.obj',
	tiles = {'counter_text.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1},
	drop = 'furniture_mod:counter_mid',
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node('furniture_mod:counter_sink', {
	description = 'Counter(Sink)',
	drawtype = 'mesh',
	mesh = 'FM_counter_sink.obj',
	tiles = {'counter_text.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1, not_in_creative_inventory=1},
	drop = 'furniture_mod:counter_mid',
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node('furniture_mod:basin', {
	description = 'Basin',
	drawtype = 'mesh',
	mesh = 'FM_basin.obj',
	tiles = {'counter_text.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.5, -.5, -.3, .5, .5, .5}, -- Right, Bottom, Back, Left, Top, Front
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.5, -.5, -.3, .5, .5, .5},
		},
})

minetest.register_node('furniture_mod:counter_corner', {
	description = 'Counter',
	drawtype = 'mesh',
	mesh = 'FM_counter_corner.obj',
	tiles = {'counter_text.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1, not_in_creative_inventory=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	drop = 'furniture_mod:counter_mid',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node('furniture_mod:counter_mid_1', {
	description = 'Counter',
	drawtype = 'mesh',
	mesh = 'FM_counter_mid_1.obj',
	tiles = {'counter_text.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1, not_in_creative_inventory=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	drop = 'furniture_mod:counter_mid',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node('furniture_mod:floor_coalstone', {
	description = 'CoalStone Tile',
	drawtype = 'nodebox',
	tiles = {'xdecor_coalstone_tile.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}, -- NodeBox32
		}
	}
})

local floor_table = { --name, material, invimg
{'Orange Tile', 'orange'},
{'Brown Tile', 'brown'},
{'White Tile', 'skeleton'}
}

for i in ipairs (floor_table) do
	local name = floor_table[i][1]
	local material = floor_table[i][2]
	local invimg = floor_table[i][3]

minetest.register_node('furniture_mod:floor_'..material, {
	description = name,
	drawtype = 'nodebox',
	tiles = {'default_coral_'..material..'.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}, -- NodeBox32
		}
	}
})
end

minetest.register_node('furniture_mod:medicine_cabinet', {
	description = 'Medicine Cabinet',
	drawtype = 'nodebox',
	tiles = {'default_steel_block.png'},
	groups = {choppy=2, oddly_breakably_by_hand=2, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.5}, -- NodeBox1
		}
	}
})

minetest.register_node('furniture_mod:cabinet', {
	description = 'Cabinet',
	drawtype = 'mesh',
	mesh = 'FM_cabinet.obj',
	tiles = {'default_gold_block.png', 'default_dirt.png', 'default_aspen_wood.png'},
	groups = {choppy=2, oddly_breakably_by_hand=2, furn=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.5, -.2, -.2, .5, .4, .5}, -- Right, Bottom, Front, Left, Top, Back
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.5, -.2, -.2, .5, .4, .5},
		},
})

minetest.register_node('furniture_mod:oven', {
	description = 'Oven',
	drawtype = 'mesh',
	mesh = 'FM_oven.obj',
	inventory_image = "fm_oven.png",
	tiles = {'xpanes_bar.png', 'default_coal_block.png', 'default_steel_block.png', 'default_glass.png'},
	groups = {choppy=2, oddly_breakably_by_hand=2, furn=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
			local meta = minetest.env:get_meta(pos)
			local inv = meta:get_inventory()
			inv:set_size('fuel', 1)
			inv:set_size("src", 4)
			inv:set_size("dst", 4)
			meta:set_string('formspec', furniture_mod.oven_formspec)
			meta:set_string('infotext', 'Oven')
		end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty('fuel')
	end,
})

minetest.register_node('furniture_mod:microwave', {
	description = 'Microwave',
	drawtype = 'mesh',
	mesh = 'FM_microwave.obj',
	inventory_image = "fm_microwave.png",
	tiles = {'microtext.png'},
	groups = {choppy=2, oddly_breakably_by_hand=2, furn=1},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
			local meta = minetest.env:get_meta(pos)
			local inv = meta:get_inventory()
			inv:set_size('fuel', 1)
			inv:set_size("src", 1)
			inv:set_size("dst", 1)
			meta:set_string('formspec', furniture_mod.microwave_formspec)
			meta:set_string('infotext', 'Microwave')
		end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty('fuel')
	end,
selection_box = {
		type = 'fixed',
		fixed = {-.5, -.5, -.2, .5, -.0, .4},  -- Right, Bottom, Back, Left, Top, Front
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.5, -.5, -.2, .5, -.0, .4},
		},
})

minetest.register_node('furniture_mod:wall_bookshelf_1', {
	description = 'Wall Bookshelf',
	drawtype = 'mesh',
	mesh = 'FM_bookshelf.obj',
	tiles = {{name='default_wood.png'},{name='wool_green.png'},{name='wool_red.png'},{name='wool_blue.png'}},
	groups = {choppy=2, oddly_breakably_by_hand=2, furn=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	drop = "wall_bookshelf_1",
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.5, -.5, .1, .5, .5, .5},
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.5, -.5, .1, .5, .5, .5},
		},
	on_place = function(itemstack, placer, pointed_thing)
		local stack = ItemStack("furniture_mod:wall_bookshelf_" .. math.random(1,2))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("furniture_mod:wall_bookshelf_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

minetest.register_node('furniture_mod:wall_bookshelf_2', {
	description = 'Wall Bookshelf',
	drawtype = 'mesh',
	mesh = 'FM_bookshelf_2.obj',
	tiles = {{name='default_wood.png'},{name='wool_green.png'},{name='wool_red.png'},{name='wool_blue.png'}},
	groups = {choppy=2, oddly_breakably_by_hand=2, furn=1, not_in_creative_inventory=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
	drops = 'furniture_mod:wall_bookshelf_1',
	selection_box = {
		type = 'fixed',
		fixed = {-.5, -.5, .1, .5, .5, .5},
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.5, -.5, .1, .5, .5, .5},
		},
})

minetest.register_node('furniture_mod:corner_bookshelf', {
	description = 'Corner Bookshelf',
	drawtype = 'mesh',
	mesh = 'FM_bookshelf_c.obj',
	tiles = {{name='default_wood.png'},{name='wool_green.png'},{name='wool_red.png'},{name='wool_blue.png'}},
	groups = {choppy=2, oddly_breakably_by_hand=2, furn=1, not_in_creative_inventory=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	drops = 'furniture_mod:wall_bookshelf_1',
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, .1, .5, .5, .5},
			{-.5, -.5, -.5, -.1, .5, .1},
			}
		},
	collision_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, .1, .5, .5, .5},
			{-.5, -.5, -.5, -.1, .5, .1},
			}
		},
})

minetest.register_node('furniture_mod:fridge', {
	description = 'Fridge',
	drawtype = 'mesh',
	mesh = 'FM_fridge.obj',
	inventory_image = "fm_fridge.png",
    tiles = {'default_bronze_block.png', 'default_steel_block.png','default_coral_skeleton.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node('furniture_mod:oven_overhead', {
	description = 'Oven Overhead',
	drawtype = 'mesh',
	mesh = 'FM_microhood.obj',
	tiles = {'wool_grey.png', 'wool_white.png', 'wool_dark_grey.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = 'fixed',
		fixed = {-.5, -.2, -.2, .5, .4, .5}, -- Right, Bottom, Front, Left, Top, Back
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.5, -.2, -.2, .5, .4, .5},
		},
})

minetest.register_node('furniture_mod:d_washer', {
	description = 'Dish Washer',
	drawtype = 'mesh',
	mesh = 'FM_d_washer.obj',
	tiles = {'default_steel_block.png', 'default_dirt.png', 'default_desert_stone.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node('furniture_mod:w_machine', {
	description = 'Washing Machine',
	drawtype = 'mesh',
	mesh = 'FM_w_machine.obj',
	inventory_image = 'w_machine.png',
	tiles = {'default_glass.png', 'default_acacia_wood.png', 'default_dry_grass.png', 'default_coral_skeleton.png', 'default_gold_block.png'},
	groups = {cracky=2, oddly_breakably_by_hand=2, furn=1},
	--inventory_image = 'fm_chair_stone.png',
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_tool('furniture_mod:saw', {
	description = 'Saw',
	inventory_image = 'fm_saw.png',
})

local old_on_step = minetest.registered_entities["__builtin:item"].on_step
minetest.registered_entities["__builtin:item"].on_step = function(self, dtime)
	local item_pos = self.object:getpos()
end