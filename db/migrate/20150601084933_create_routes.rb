class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|

      t.string :route_name
      t.string :route_country
      t.text :route_description
      t.string :user_name
      t.date :route_initial_date
      t.date :route_end_date
      t.string :route_comments
      t.string :route_photo


      t.timestamps null: false
    end
  end
end
