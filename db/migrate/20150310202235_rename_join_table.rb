class RenameJoinTable < ActiveRecord::Migration
  def change
    rename_table :users_relationships, :relationships_users
  end
end
