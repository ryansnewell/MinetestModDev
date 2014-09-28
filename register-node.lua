--Register computer node
minetest.register_node("testmod:computer", {
	tiles = {"computer-block.png"},
	groups = {cracky=3},
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Computer owned by " .. placer:get_player_name())
	end,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", "invsize[8,9;] textarea[1,1;5,5;Terminal;Terminal;] list[context;dst;5,2;1,1;] list[current_player;main;0,5;8,4;]")
		meta:set_string("infotext", "Computer")
		local inv = meta:get_inventory()
		inv:set_size("fuel", 1)
		inv:set_size("src", 1)
		inv:set_size("dst", 6)
	end,
})

--TODO Fix craft
minetest.register_craft({
	output = "testmod:computer 3",
	recipe = {
			{'default:wood', 'default:wood', ''},
			{'default:wood', 'default:wood', ''},
			{'', '', ''},
	}
})

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name == "testmod:computer" then
		--formspec = [[
		--	invsize[8,9;]
		--	list[context;item;2,2;1,1;]
		--	list[current_player;main;0,5;8,4;]
		--]]
		--minetest.show_formspec(puncher:get_player_name(), "testmod:computer-field", formspec)
		
		
	end
end)