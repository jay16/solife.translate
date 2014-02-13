class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.integer :book_id
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
