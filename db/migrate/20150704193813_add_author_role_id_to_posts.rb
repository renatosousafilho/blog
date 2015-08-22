class AddAuthorRoleIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :author_role_id, :integer
  end
end
