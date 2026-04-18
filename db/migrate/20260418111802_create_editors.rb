class CreateEditors < ActiveRecord::Migration[8.1]
  def change
    create_table :editors, if_not_exists: true do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
