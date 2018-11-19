class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :description
      t.integer :chef_id, :recipe_id
      t.timestamps
    end
  end
end
