class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body
      t.references :author, null: false, foreign_key: true
      t.timestamps
    end
  end
end
