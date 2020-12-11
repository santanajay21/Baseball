class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :batting_avarage 
      t.integer :height
      t.integer :user_id
    end
  end
end
