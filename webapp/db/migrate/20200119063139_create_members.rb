class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.boolean :is_hidden, null: false, default: false

      t.string :icon_url
      t.string :top_url
      t.string :intro
      t.date :birthday

      t.timestamps
    end

    add_index :members, :name, unique: true
    add_index :members, :slug, unique: true
  end
end
