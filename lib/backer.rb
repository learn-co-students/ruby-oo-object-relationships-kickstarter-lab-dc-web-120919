require "pry"
class Backer

attr_reader :name

      def initialize(name)
        @name = name
      end

      def back_project(project)
        # calling ProjectBacker class and setting project to Backer class
        ProjectBacker.new(project, self)
      end

      def backed_projects
        ProjectBacker.all.select do |project_backer|
         self.name == project_backer.backer.name
           # binding.pry

         end.map do |project_backer|
          project_backer.project
         end
      end


end
