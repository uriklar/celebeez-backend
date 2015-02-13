class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :starting_bid
      t.integer :celeb_id

      t.timestamps
    end
  end
end
