class FixColName < ActiveRecord::Migration
  def change
     rename_column :surveys, :relatoinship_id, :relationship_id
  end
end
