class Team < ActiveRecord::Base
    has_many :teams 
    has_many :players#,through :teams
    # is giving us the following instance methods 
    #.teams
    #.teams <<(team_object) 
    #teams_ids
    #.teams_ids=(array_of_ids)
    #.teams.build(pass in team attributes)

end 