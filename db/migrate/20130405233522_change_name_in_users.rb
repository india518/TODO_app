class ChangeNameInUsers < ActiveRecord::Migration
  def up
    remove_column :users, :name
    add_column :users, :name, :string
  end

  def down
    add_column :users, :name
    remove_column :users, :name, :integer
  end
end
