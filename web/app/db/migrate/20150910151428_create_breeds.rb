class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :name
      t.integer :size
      t.string :weight
      t.integer :country_id
      t.string :url_info
      t.text :description

      t.timestamps null: false
    end
  end
end
