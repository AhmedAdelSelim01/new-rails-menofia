class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users, if_not_exists: true do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
