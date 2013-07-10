class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :description
      t.string :frequency
      t.belongs_to :user

      t.timestamps
    end
  end
end
