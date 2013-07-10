class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :date
      t.string :summary
      t.string :image
      t.string :id

      t.timestamps
    end
  end
end
