class CreateMilestones < ActiveRecord::Migration
    def change
        create_table :milestones do |t|
            t.string :title
            t.string :description
            t.integer :user_id, index: true
            t.integer :relationship_id, index: true
            t.timestamps null: false
        end
  end
end
