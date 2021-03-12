# Your code goes here!
class Dog
    def self.define_properties(props)
        props.each do |prop|
            # Defining the reader
            define_method(prop) do
                # what does this reader need to do?
                # it needs to expose the instance variable
                instance_variable_get(:"@#{prop}")
            end

            # Defining the writer
            define_method("#{prop}=") do |arg|
                # What does this writer need to do?
                # it needs to expose the instance variable
                instance_variable_set(:"@#{prop}", arg)
            end
        end
    end

    self.define_properties([:name, :breed])
end

fido = Dog.new
fido.name = "Fido"
fido.breed = "dog"
fido

