class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text  :list_comment
    	t.integer :route_id
    	t.string :user_name

      t.timestamps null: false
    end
  end
end
