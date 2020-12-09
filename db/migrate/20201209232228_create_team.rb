class CreateTeam < ActiveRecord::Migration[5.2]
  def change
    add_column :baseballs, :team_id, :integer
  end
end
