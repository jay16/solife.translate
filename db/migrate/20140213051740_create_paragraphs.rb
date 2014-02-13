class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.integer :title_id
      t.integer :index
      t.text :content
      t.text :markdown
      t.text :translate

      t.timestamps
    end
  end
end
