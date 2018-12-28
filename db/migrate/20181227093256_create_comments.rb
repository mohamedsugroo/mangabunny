class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :video_id
      t.integer :post_id
      t.text :body
      t.boolean :reply
      t.integer :reply_to
      t.boolean :video
      t.boolean :post

      t.timestamps
    end
  end
end
