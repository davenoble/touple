class CreateRelationships < ActiveRecord::Migration
  def change
    
    create_table :relationships do |t|
        t.datetime :start_date
        t.datetime :end_date, default: nil
        t.string :status

        t.timestamps null: false
    end

    create_table :users_relationships, id: false do |t|
        t.integer :user_id, index: true
        t.integer :relationship_id, index: true
    end
  end
end
