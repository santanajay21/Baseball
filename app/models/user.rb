class User < ActiveRecord::Base
    
   has_many :players
   has_secure_password #comes from active record
   #provides a reader writer method for password
   def password =(plain_password)
    @password=plain_password
   end

    #joing table because it has 2 foregin keys 
end