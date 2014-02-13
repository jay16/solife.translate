class CreateUserWithBooks < ActiveRecord::Migration
  def change
    create_table :user_with_books do |t|
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
