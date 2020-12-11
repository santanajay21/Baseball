class User < ActiveRecord::Base
    
   has_many :players
    #joing table because it has 2 foregin keys 
end