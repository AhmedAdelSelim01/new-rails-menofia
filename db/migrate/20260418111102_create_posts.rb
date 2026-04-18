class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts, if_not_exists: true do |t|
      t.string :title
      t.text :bidy

      t.timestamps
    end

    if column_exists?(:posts, :content) && !column_exists?(:posts, :bidy)
      rename_column :posts, :content, :bidy
    end

    unless column_exists?(:posts, :user_id)
      add_column :posts, :user_id, :integer

      Post.reset_column_information
      default_user = User.first || User.create!(name: "Legacy User", email: "legacy.user@example.com")
      Post.update_all(user_id: default_user.id)
      change_column_null :posts, :user_id, false
    end
  end
end
