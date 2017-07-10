default.chest_formspec = 
	"size[9,9]"..
	"background[-0.19,-0.25;9.41,10.48;default_wood.png]"..
	"bgcolor[#080808BB;true]"..
	"listcolors[#9990;#FFF7;#FFF0;#160816;#D4D2FF]"..
	'list[current_name;storage;3,1.5;3,3;]'..
	'list[current_player;main;0.5,6.5;8,4;]'
		
local nightstand_inv_size = 9,10.5
local nightstand_inv_vers = 1
	
furniture_mod.fireplace_formspec =
	'size[8,6]'..
	default.gui_bg..
	default.gui_bg_img..
	default.gui_slots..
	'background[8,6;0,0;default_brick.png;true]'..
	'list[current_name;fuel;1,0;1,1;]'..
	'list[current_player;main;0,2.5;8,4;]'
	default.get_hotbar_bg(0,4.85)

furniture_mod.oven_formspec =
	"size[8,7]"..
	'background[8,8;8,8;default_steel_block.png;true]'..
	"image[4,1;1,1;default_furnace_fire_bg.png]"..
	"list[current_name;fuel;3,1;1,1;]"..
	"list[current_name;src;0,0;2,2;]"..
	"list[current_name;dst;6,0;2,2;]"..
	"list[current_player;main;0,3;8,4;]"
	
furniture_mod.microwave_formspec =
	"size[8,7]"..
	'background[8,8;8,8;default_steel_block.png;true]'..
	"image[4,1;1,1;default_furnace_fire_bg.png]"..
	"list[current_name;fuel;3,1;1,1;]"..
	"list[current_name;src;0,0;2,1;]"..
	"list[current_name;dst;6,0;2,1;]"..
	"list[current_player;main;0,3;8,4;]"