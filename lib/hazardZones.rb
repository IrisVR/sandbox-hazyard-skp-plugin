class HazardZones

	include HazardZoneTool

	$new_face

	def add_zone()
		rectTool = Rectangle.new()
		Sketchup.active_model.select_tool(rectTool)
	end

end
