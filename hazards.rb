libDir = "lib"

# Require all
require_relative File.join(libDir, "HazardLib.rb")

def init
    hazardlib = HazardLib.new()
    hazardlib.create_components
    # hazardlib.add_components_test

    toolbar = UI::Toolbar.new "Hazard Constructor"

    # create add worker command
    cworker_cmd = UI::Command.new("Add Worker") {
        hazardlib.add_component
    }
    cworker_cmd.small_icon = "ToolPencilSmall.png"
    cworker_cmd.large_icon = "ToolPencilLarge.png"
    cworker_cmd.tooltip = "Add Worker"
    cworker_cmd.status_bar_text = "Adding a worker hazard to the model"
    cworker_cmd.menu_text = "Add Worker"
    toolbar = toolbar.add_item cworker_cmd

    toolbar.show

end #init

init
