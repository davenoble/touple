class AddUsersColumns < ActiveRecord::Migration
  def change
    change_table :users do |t|
        t.string :last_name
        t.string :first_name
        t.string :bio
    end
  end
end
