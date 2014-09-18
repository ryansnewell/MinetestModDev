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