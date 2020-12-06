class Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        project_backer = ProjectBacker.new(self, backer)
    end
    def backers
        projects = ProjectBacker.all.select {|project| project.project == self}
        projects.map {|project| project.backer}
    end
end