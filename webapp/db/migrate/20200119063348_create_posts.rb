class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :member, foreign_key: true, null: false
      t.text :content, null: false
      t.boolean :is_hidden, default: false, null: false
      t.references :post, foreign_key: true

      t.timestamps
    end

    add_index :posts, :created_at
    add_index :posts, :is_hidden
  end
end
