class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.text :books_name
      t.text :authore_name

      t.timestamps
    end
  end
end
