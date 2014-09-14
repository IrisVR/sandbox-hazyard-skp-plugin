libDir = "lib"

# Require all
require_relative File.join(libDir, "HazardLib.rb")

def init
    hazardlib = HazardLib.new()
    hazardlib.create_components
    hazardlib.add_components_test

    toolbar = UI::Toolbar.new "Hazard Constructor"
    cmd = UI::Command.new("Test") {
        UI.messagebox "Hello World"
    }
    cmd.small_icon = "ToolPencilSmall.png"
    cmd.large_icon = "ToolPencilLarge.png"
    cmd.tooltip = "Test Toolbar"
    cmd.status_bar_text = "Testing the toolbars class"
    cmd.menu_text = "Test"
    toolbar = toolbar.add_item cmd
    toolbar.show

end #init

init
