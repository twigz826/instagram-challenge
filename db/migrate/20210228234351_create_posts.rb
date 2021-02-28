class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :image
      #Checks if post is active or if it has been deleted
      t.boolean :active
      #Reference account of user that made that post
      t.references :user
      t.timestamps
    end
  end
end
