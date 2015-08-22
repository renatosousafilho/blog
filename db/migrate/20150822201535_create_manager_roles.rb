class CreateManagerRoles < ActiveRecord::Migration
  def change
    create_table :manager_roles do |t|
      t.string :secao

      t.timestamps null: false
    end
  end
end
