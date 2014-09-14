libDir = "lib"

# Require all
require_relative File.join(libDir, "HazardLib.rb")
require_relative File.join(libDir, "rectangle.rb")

require_relative File.join(libDir, "hazardZones.rb")

def init
    hazardlib = HazardLib.new()
    hazardlib.create_components
    # hazardlib.add_components_test

    hazardZones = HazardZones.new()

    toolbar = UI::Toolbar.new "Hazard Constructor"

    # create add worker command
    cworker_cmd = UI::Command.new("Add Worker") {
        hazardlib.add_component
    }

    #create hazard zone
    hazardZone_command = UI::Command.new("Add Hazard Zone") {
        hazardZones.add_zone
    }
    hazardZone_command.small_icon = "ToolPencilSmall.png"
    hazardZone_command.large_icon = "ToolPencilLarge.png"
    hazardZone_command.tooltip = "Add Worker"
    hazardZone_command.status_bar_text = "Adding a worker hazard to the model"
    hazardZone_command.menu_text = "Add Worker"
    toolbar = toolbar.add_item hazardZone_command

    cworker_cmd.small_icon = "ToolPencilSmall.png"
    cworker_cmd.large_icon = "ToolPencilLarge.png"
    cworker_cmd.tooltip = "Add Worker"
    cworker_cmd.status_bar_text = "Adding a worker hazard to the model"
    cworker_cmd.menu_text = "Add Worker"
    toolbar = toolbar.add_item cworker_cmd

    toolbar.show

end #init

init
