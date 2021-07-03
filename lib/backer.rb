require 'pry'

class Backer 

    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        pb_array = ProjectBacker.all.select do|pbacker|
            pbacker.backer == self
        end
        pb_array.map do |pb|
            pb.project 
        end
    end


end