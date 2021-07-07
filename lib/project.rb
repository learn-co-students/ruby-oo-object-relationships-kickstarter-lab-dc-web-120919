class Project

attr_reader :title

    def initialize(title)
      @title = title
    end



    def add_backer(backer)
      # calling ProjectBacker class and setting backer to project class
      ProjectBacker.new(self, backer)
    end

    def backers
      ProjectBacker.all.select do |projects_array|
        self.title == projects_array.project.title
      end.map do |projects|
        projects.backer
      end
    end

end
