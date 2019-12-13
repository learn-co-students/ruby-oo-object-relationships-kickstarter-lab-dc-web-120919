class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select do |project_baker|
            self.title == project_baker.project.title
        end.map do |projects|
            projects.backer
        end
    end
end