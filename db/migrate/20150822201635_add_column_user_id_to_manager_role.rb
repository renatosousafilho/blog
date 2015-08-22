class AddColumnUserIdToManagerRole < ActiveRecord::Migration
  def change
    add_column :manager_roles, :user_id, :integer
  end
end
