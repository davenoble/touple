class CreateSurveys < ActiveRecord::Migration
    def change
        create_table :surveys do |t|
            t.integer :happy_sad
            t.integer :lonely_crowded
            t.integer :horny_pressured
            t.integer :janitor_nagged
            t.string :journal_entry
            t.integer :user_id, index: true
            t.integer :relatoinship_id, index: true
            t.timestamps null: false
        end
    end
end
