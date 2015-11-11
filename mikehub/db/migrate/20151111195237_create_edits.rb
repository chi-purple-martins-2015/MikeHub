class CreateEdits < ActiveRecord::Migration
  def change
    create_table :edits do |t|
      t.references :article, index: true, foreign_key: true
      t.integer :editor_id
      t.text :content
      t.boolean :accepted
      t.string :title
      t.string :subtitle

      t.timestamps null: false
    end
  end
end
