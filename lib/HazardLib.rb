class HazardLib

    # Initialize the Class
    def initialize(size = 0)
        @size = size
        path = File.join(File.dirname(__FILE__), '..', 'assets/hazard-models')
        @libPath = path

    end # initialize

    # Create a component for each model in `assets/hazard-models`
    def create_components
        model = Sketchup.active_model
        definitions = model.definitions

        definitions.load File.join(@libPath, "hazard_CementTruck.skp")
        definitions.load File.join(@libPath, "hazard_Trailer.skp")
        definitions.load File.join(@libPath, "hazard_CWorker_Safe.skp")
        definitions.load File.join(@libPath, "hazard_CWorker_Unsafe.skp")
        # model.place_component coworker_safe
        UI.messagebox "Hazards components loaded."
    end # create_components

    def add_component(name = "CWorker-Safe")
        model = Sketchup.active_model
        entities = model.entities
        definitions = model.definitions

        definitions.each { |componentdef|

            if componentdef.name == name

                model.place_component componentdef

                return;

                # Set the component-specific attribute dictionary
                # case name
                # when "CWorker-Safe"
                #     componentinstance.set_attribute "attributes", "hazardlib", "true"
                # else
                #     componentinstance.set_attribute "attributes", "hazardlib", "true"
                # end

                # value = componentinstance.get_attribute "testdictionary", "test"
                #
                # UI.messagebox(value)
            end
        }
    end # add_components_test

end # HazardLib
