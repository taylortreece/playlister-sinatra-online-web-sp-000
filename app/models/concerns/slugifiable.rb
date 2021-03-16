class Slugifiable

    def self.create_slug_name(instance)
        instance.name.gsub(" ", "-")
    end
    
    def self.reverse_slug_name(name)
        name.gsub("-", " ")
    end
    
end