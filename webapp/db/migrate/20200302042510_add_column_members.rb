class AddColumnMembers < ActiveRecord::Migration[6.0]
  def up
    add_column :members, :user_id, :integer
  end

  def down
    remove_column :members, :user_id, :integer
  end
end
