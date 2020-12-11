class Player < ActiveRecord::Base
    belongs_to :user

    #methods we get because of belongs_to:
    #.player
    #.player=(accept a player obj as an argument)
    #.build_player
    #.create_player
end
