local night_table = { --color
{'wood'},
{'acacia_wood'},
{'pine_wood'},
{'junglewood'},
{'aspen_wood'}
}

for i in ipairs (night_table) do
	local material = night_table[i][1]
	
minetest.register_craft({
	output = 'furniture_mod:bedside_cabinet_'..material,
	recipe = {
	{'default:'..material, 'default:'..material, 'default:'..material, },
	{'default:'..material, 'default:chest', 'default:'..material, },
	}
})
end

local table_table = { --color
{'cobble'},
{'wood'},
{'acacia_wood'},
{'pine_wood'},
{'junglewood'},
{'aspen_wood'}
}

for i in ipairs (table_table) do
	local material = table_table[i][1]
	
minetest.register_craft({
	output = 'furniture_mod:table_'..material,
	recipe = {
	{'default:'..material, 'default:'..material, 'default:'..material, },
	{'', 'default:'..material, '', },
	{'', 'default:'..material, '', },
	}
})
end

local hedge_table = { --name, material, invimg
{'leaves'},
{'pine_needles'},
{'jungleleaves'},
{'acacia_leaves'},
{'aspen_leaves'}
}

for i in ipairs (hedge_table) do
	local material = hedge_table[i][1]

minetest.register_craft({
	output = 'furniture_mod:hedge_'..material,
	recipe = {
		{'', '', ''},
		{'default:'..material, 'default:'..material, 'default:'..material},
		{'default:'..material, 'default:'..material, 'default:'..material}
		}
})
end

local c_table = { --name, material, invimg
{'wood'},
{'aspen_wood'},
{'junglewood'},
{'acacia_wood'},
{'pine_wood'},
{'cobble'}
}

for i in ipairs (c_table) do
	local material = c_table[i][1]

minetest.register_craft({
	output = 'furniture_mod:table_c_'..material,
	recipe = {{"furniture_mod:table_"..material, "furniture_mod:saw"}}
})
end

local shelf = { --name, material, invimg
{'wood'},
{'aspen_wood'},
{'junglewood'},
{'acacia_wood'},
{'pine_wood'},
{'cobble'}
}

for i in ipairs (shelf) do
	local material = shelf[i][1]

minetest.register_craft({
	output = 'furniture_mod:shelf_'..material,
	recipe = {{"default:"..material, "furniture_mod:saw"}}
})
end

local sofa_table = { --color
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
	
minetest.register_craft({
	output = 'furniture_mod:sofa_'..color,
	recipe = {
	{'', '', '', },
	{'wool:'..color, 'wool:'..color, 'wool:'..color, },
	{'wool:'..color, 'wool:'..color, 'wool:'..color, },
	}
})

minetest.register_craft({
	output = 'furniture_mod:sofa_'..color,
	recipe = {
	{'furniture_mod:sofa_white', 'dye:'..color}
	}
})
end

minetest.register_craft({
	output = 'furniture_mod:hammer',
	recipe = {
	{'','default:steel_ingot', ''},
	{'', 'default:stick', 'default:steel_ingot'},
	{'default:stick', '', ''}
	}
})

local chair = { --name, material, invimg
{'wood'},
{'aspen_wood'},
{'junglewood'},
{'acacia_wood'},
{'pine_wood'},
{'cobble'}
}

for i in ipairs (chair) do
	local material = chair[i][1]

minetest.register_craft({
	output = 'furniture_mod:chair_'..material,
	recipe = {
	{'default:'..material, '', ''},
	{'default:'..material, 'default:'..material, 'default:'..material},
	{'default:'..material, '', 'default:'..material}
	}
})
end

minetest.register_craft({
	output = 'furniture_mod:stone_path_1',
	recipe = {
	{'default:stone', 'default:stone', 'furniture_mod:hammer'}
	}
})

minetest.register_craft({
	output = 'furniture_mod:fireplace',
	recipe = {
	{'default:brick', 'default:brick', 'default:brick'},
	{'default:brick', 'default:furnace', 'default:brick'},
	{'default:brick', 'default:brick', 'default:brick'}
	}
})

minetest.register_craft({
	output = 'furniture_mod:blinds_open',
	recipe = {
		{'default:stick', 'default:stick', 'default:stick'},
		{'default:stick', 'default:stick', 'default:stick'},
		{'default:stick', 'default:stick', 'default:stick'}
		}
})

minetest.register_craft({
	output = 'furniture_mod:curtain_open',
	recipe = {
		{'wool:red', 'wool:red', 'wool:red'},
		{'default:gold_ingot', '', 'default:gold_ingot'},
		{'wool:red', '', 'wool:red'}
		}
})

minetest.register_craft({
	output = 'furniture_mod:fence',
	type = "shapeless",
    recipe = {"default:fence_wood", "dye:white"},
})

minetest.register_craft({
	output = 'furniture_mod:fence_2',
	type = "shapeless",
    recipe = {"furniture_mod:fence"},
})

minetest.register_craft({
	output = 'furniture_mod:fence_c',
	type = "shapeless",
    recipe = {"furniture_mod:fence_2"},
})

minetest.register_craft({
	output = 'furniture_mod:fence_t',
	type = "shapeless",
    recipe = {"furniture_mod:fence_c"},
})

minetest.register_craft({
	output = 'furniture_mod:trash_can',
	recipe = {
		{'furniture_mod:s_plates', 'default:stone', 'furniture_mod:s_plates'},
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'}
		}
})

minetest.register_craft({
	output = "furniture_mod:s_plates",
	type = "shapeless",
    recipe = {"default:steel_ingot", "furniture_mod:hammer"}
})

minetest.register_craft({
	output = 'furniture_mod:saw',
	recipe = {
		{'default:stone', '', 'default:stone'},
		{'', 'default:wood', ''},
		{'', '', ''}
		}
})

minetest.register_craft({
	output = "furniture_mod:wall_bookshelf_1",
	recipe = {
		{"stairs:slab_wood", "stairs:slab_wood", 'stairs:slab_wood'},
		{'default:book', 'default:book', 'default:book'},
		{"stairs:slab_wood", "stairs:slab_wood", 'stairs:slab_wood'}
		}
})

minetest.register_craft({
	output = "furniture_mod:wall_bookshelf_1",
	type = "shapeless",
    recipe = {"default:bookshelf", "furniture_mod:saw"}
})

minetest.register_craft({
    output = "furniture_mod:radio",
    recipe = {
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot", },
        {"default:steel_ingot", "default:chest", "default:steel_ingot", },
        {"default:stick", "", "default:stick", }
    }
})