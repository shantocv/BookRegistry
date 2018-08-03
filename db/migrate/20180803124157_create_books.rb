class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :isbn
      t.integer :price
      t.string :category
      t.boolean :publish, default: false

      t.timestamps
    end

    add_index :books, :name
    add_index :books, :author
    add_index :books, :isbn
    add_index :books, :price
    add_index :books, :category
    add_index :books, :publish
  end
end
