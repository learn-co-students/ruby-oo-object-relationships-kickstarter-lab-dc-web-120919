require 'pry'
class Backer
    attr_reader :name
    def initialize(name)
        @name = name
    end
    def back_project(project)
        ProjectBacker.new(project,self)
    end
    def helper_method
        ProjectBacker.all.select do |projectbacker |
            projectbacker.backer == self

        end
    end
    def backed_projects
        self.helper_method.map do |projectbacker|

            projectbacker.project 
        end
       end







    
end