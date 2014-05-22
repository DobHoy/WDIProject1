module ApplicationHelper

      # def collectionOfRolesHash
      #   collRoles = {:student => "student", :instructor => "instructor", 
      #               :producer => "producer", :regional => "regional",
      #               :admin => "admin"
      #               }
      # end

      # def collectionOfRolesHash
      #   collRoles = {:student => "student", :instructor => "instructor", 
      #               :producer => "producer", :regional => "regional",
      #               :admin => "admin"
      #               }
      #   collRoles = ["student", "instructor","producer","regional" ]
      # end


    def listofPrograms
        Program.all.map{ |p| p.name }
    end

    def listofLocations
      Location.all.map{ |l| l.name  }
    end

end
