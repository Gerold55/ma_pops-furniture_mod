furniture_mod = {}

dofile(minetest.get_modpath('furniture_mod')..'/furniture_crafts.lua')
dofile(minetest.get_modpath('furniture_mod')..'/furniture_nodes.lua')
dofile(minetest.get_modpath('furniture_mod')..'/functions.lua')
dofile(minetest.get_modpath('furniture_mod')..'/formspecs.lua')
dofile(minetest.get_modpath('furniture_mod')..'/tools.lua')
dofile(minetest.get_modpath('furniture_mod')..'/abms.lua')
dofile(minetest.get_modpath('furniture_mod')..'/furniture_craftitems.lua')

minetest.chat_send_player("player", "Welcome to Ma and Pop's Furniture Mod.")
