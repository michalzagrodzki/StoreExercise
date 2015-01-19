class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.string :name
      t.boolean :featured
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
