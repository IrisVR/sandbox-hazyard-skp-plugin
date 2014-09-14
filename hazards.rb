libDir = "lib"

# Require all
require_relative File.join(libDir, "HazardLib.rb")
require_relative File.join(libDir, "hazardRectangle.rb")
require_relative File.join(libDir, "evacRectangle.rb")

require_relative File.join(libDir, "hazardZones.rb")
require_relative File.join(libDir, "evacZones.rb")

def init
    hazardlib = HazardLib.new()
    hazardlib.create_components

    hazardZones = HazardZones.new()
    evacZones = EvacZones.new()

    toolbar = UI::Toolbar.new "Hazard Constructor"

    # create add worker button
    trailer_cmd = UI::Command.new("Add Start Point") {
        # # With three params, it shows all text boxes:
        # prompts = ["What is your Name?", "What is your Age?", "Gender"]
        # defaults = ["Enter name", "", "Male"]
        # # input = UI.inputbox(prompts, defaults, "Tell me about yourself.")
        #
        # prompts = ["What is your Name?", "What is your Age?", "Gender"]
        # defaults = ["Enter name", "", "Male"]
        # list = ["", "", "Male|Female"]
        # # input = UI.inputbox(prompts, defaults, list, "Tell me about yourself.")
        #
        # if UI.inputbox(prompts, defaults, list, "Tell me about yourself.")
        #     hazardlib.add_component("hazard_Trailer")
        # end # if input

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

    # create add safe worker button
    cementtruck_cmd = UI::Command.new("Add Safe Worker") {
        hazardlib.add_component("hazard_CWorker_Safe")
    }
    cementtruck_cmd.small_icon = "assets/images/ico-cworker-safe.png"
    cementtruck_cmd.large_icon = "assets/images/ico-cworker-safe@2x.png"
    cementtruck_cmd.tooltip = "Add Safe Worker"
    cementtruck_cmd.status_bar_text = "Adding a safe worker to the model"
    cementtruck_cmd.menu_text = "Add Safe Worker"
    toolbar = toolbar.add_item cementtruck_cmd

    # create add safe worker button
    cementtruck_cmd = UI::Command.new("Add Unsafe Worker") {
        hazardlib.add_component("hazard_CWorker_Unsafe")
    }
    cementtruck_cmd.small_icon = "assets/images/ico-cworker-unsafe.png"
    cementtruck_cmd.large_icon = "assets/images/ico-cworker-unsafe@2x.png"
    cementtruck_cmd.tooltip = "Add Unsafe Worker"
    cementtruck_cmd.status_bar_text = "Adding a unsafe worker to the model"
    cementtruck_cmd.menu_text = "Add Unsafe Worker"
    toolbar = toolbar.add_item cementtruck_cmd

    # create hazard zone
    hazardZone_cmd = UI::Command.new("Add Hazard Zone") {
        hazardZones.add_zone
    }
    hazardZone_cmd.small_icon = "assets/images/ico-hazardzone.png"
    hazardZone_cmd.large_icon = "assets/images/ico-hazardzone@2x.png"
    hazardZone_cmd.tooltip = "Add Hazard Zone"
    hazardZone_cmd.status_bar_text = "Adding a hazard zone to the model"
    hazardZone_cmd.menu_text = "Add Hazard Zone"
    toolbar = toolbar.add_item hazardZone_cmd

    #create evac zone
    evacZone_cmd = UI::Command.new("Add Evacuation Zone") {
        evacZones.add_zone
    }
    evacZone_cmd.small_icon = "assets/images/ico-evaczone.png"
    evacZone_cmd.large_icon = "assets/images/ico-evaczone@2x.png"
    evacZone_cmd.tooltip = "Add Evac Zone"
    evacZone_cmd.status_bar_text = "Adding a evacuation zone to the model"
    evacZone_cmd.menu_text = "Add Evac Zone"
    toolbar = toolbar.add_item evacZone_cmd

    toolbar.show

end #init

init
