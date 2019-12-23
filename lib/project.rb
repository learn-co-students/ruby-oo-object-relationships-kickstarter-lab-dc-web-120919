class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end
    def all_projects
        ProjectBacker.all.select do |projectbacker|
            projectbacker.project == self
        end
    end
    def backers
        self.all_projects.map do |projectbacker|
            projectbacker.backer
        end

    end


end
