class Project 

 attr_reader :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
       project_array = ProjectBacker.all.select do |project|
            project.project == self
        end
        # binding.pry
        project_array.map do |pa|
            pa.backer
        end
            # binding.pry
    end
end
