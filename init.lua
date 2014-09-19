minetest.register_node("testmod:computer", {
	tiles = {"computer-block.png"},
	groups = {cracky=3},
})

minetest.register_on_placenode(function(pos, newnode, placer, oldnode, itemstack, pointed_thing) 
	if newnode.name == "tutorial:computer" then
		minetest.chat_send_all("You placed a computer")
	else
		minetest.chat_send_all("Tsk tsk")
	end
end)

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
		--minetest.chat_send_all("You punched me, you cunt")
		formspec = [[
			size[8,9;]
			list[context;fuel;1,1;1,1;]
			list[context;src;2,2;1,1;]
			list[context;dst;5,1;2,2;]
			list[current_player;main;0,5;8,4;]
		]]
		minetest.show_formspec(puncher:get_player_name(), "testmod:computer-field", formspec)
	end
end)