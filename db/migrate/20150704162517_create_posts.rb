class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body, :lenght => 200

      t.timestamps null: false
    end
  end
end
