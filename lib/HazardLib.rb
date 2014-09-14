class HazardLib

    # Initialize the Class
    def initialize(size = 0)
        @size = size
        @libPath = "/Users/tnbeatty/Developer/Iris/aec-hackathon/skp-hazards/assets/hazard-models"
    end # initialize

    # Create a component for each model in `assets/hazard-models`
    def create_components
        model = Sketchup.active_model
        definitions = model.definitions

        coworker_safe = definitions.load File.join(@libPath, "CWorker-Safe.skp")
        UI.messagebox coworker_safe.name
    end # create_components

    def add_component(name = "CWorker-Safe")
        entities = Sketchup.active_model.entities
        definitions = Sketchup.active_model.definitions

        definitions.each { |definition|

            if definition.name == name
                transformation = Geom::Transformation.new([0,0,0])
                componentinstance = entities.add_instance(definition, transformation)

                # Set the component-specific attribute dictionary
                case name
                when "CWorker-Safe"
                    componentinstance.set_attribute "attributes", "hazardlib", "true"
                else
                    componentinstance.set_attribute "attributes", "hazardlib", "true"
                end

                # value = componentinstance.get_attribute "testdictionary", "test"
                #
                # UI.messagebox(value)
            end
        }
    end # add_components_test

end # HazardLib
