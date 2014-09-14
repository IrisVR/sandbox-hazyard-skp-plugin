class EvacZones

	include EvacZoneTool

	$new_face

	def add_zone()
		rectTool = Rectangle.new()
		Sketchup.active_model.select_tool(rectTool)
	end

end
