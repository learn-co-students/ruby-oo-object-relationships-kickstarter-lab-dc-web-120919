# `Backer` instance is initialized, it should be initialized with a name.
require 'pry'
class Backer

    attr_reader :name 
    @@all = []
    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
      @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    # instance method - backed_projects returns an array of projects that associated with this Backer(self)instance
    #  if an instance of backer call this methood return their project
    def backed_projects
        #  go through project class
       
        backerarray = ProjectBacker.all.select do |backer|
         backer.backer == self
        end
        backerarray.map do |ba|
            ba.project
        end
    end
        



    
end 
