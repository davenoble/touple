class CreateArguments < ActiveRecord::Migration
    def change
        create_table :arguments do |t|
            t.string :owner_description
            t.string :second_description
            t.string :owner_response
            t.string :second_respose
            t.integer :user_id, index: true
            t.integer :relationship_id, index: true
            t.timestamps null: false
    end
  end
end
