class CreateBaseballs < ActiveRecord::Migration[5.2]
  def change
    create_table :baseballs do |t|
      t.string :title
      t.integer :year
      t.boolean :popular
      t.text :discription
    end 
  end
end