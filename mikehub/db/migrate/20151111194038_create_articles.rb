class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :author_id
      t.string :title
      t.text :content
      t.string :subtitle

      t.timestamps null: false
    end
  end
end
