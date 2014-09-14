libDir = "lib"

# Require all
require_relative File.join(libDir, "HazardLib.rb")

def init
    hazardlib = HazardLib.new()
    hazardlib.create_components

    toolbar = UI::Toolbar.new "Hazard Constructor"

    # create add worker button
    trailer_cmd = UI::Command.new("Add Start Point") {
        hazardlib.add_component("hazard_Trailer")
    }
    trailer_cmd.small_icon = "assets/images/ico-trailer.png"
    trailer_cmd.large_icon = "assets/images/ico-trailer@2x.png"
    trailer_cmd.tooltip = "Add Start Point"
    trailer_cmd.status_bar_text = "Adding a start point to the model"
    trailer_cmd.menu_text = "Add Start Point"
    toolbar = toolbar.add_item trailer_cmd

    # create add cement truck button
    cementtruck_cmd = UI::Command.new("Add Truck") {
        hazardlib.add_component("hazard_CementTruck")
    }
    cementtruck_cmd.small_icon = "assets/images/ico-cementtruck.png"
    cementtruck_cmd.large_icon = "assets/images/ico-cementtruck@2x.png"
    cementtruck_cmd.tooltip = "Add Truck Hazard"
    cementtruck_cmd.status_bar_text = "Adding a truck hazard to the model"
    cementtruck_cmd.menu_text = "Add Truck Hazard"
    toolbar = toolbar.add_item cementtruck_cmd

    # create add truck button
    cementtruck_cmd = UI::Command.new("Add Safe Worker") {
        hazardlib.add_component("hazard_CWorker_Safe")
    }
    cementtruck_cmd.small_icon = "assets/images/ico-cworker-safe.png"
    cementtruck_cmd.large_icon = "assets/images/ico-cworker-safe@2x.png"
    cementtruck_cmd.tooltip = "Add Safe Worker"
    cementtruck_cmd.status_bar_text = "Adding a safe worker to the model"
    cementtruck_cmd.menu_text = "Add Safe Worker"
    toolbar = toolbar.add_item cementtruck_cmd

    toolbar.show

end #init

init
