class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes, id: false do |t|
      t.references :post,   foreign_key: true, null: false
      t.references :member, foreign_key: true, null: false
      t.timestamps
    end
  end
end
