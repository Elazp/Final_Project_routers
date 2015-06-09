class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :route_id
   	  t.string :point_name
   	  t.text :point_description
   	  t.date :point_date
   	  t.string :point_comments
      t.string :point_photo
      t.string :address
      t.float :latitude
      t.float :longitude


      t.timestamps null: false
    end
  end
end
