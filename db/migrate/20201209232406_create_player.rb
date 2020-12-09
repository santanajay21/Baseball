class CreatePlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :baseballs, :player_id, :integer 
  end
end
