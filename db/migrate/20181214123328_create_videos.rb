class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.string :duration
      t.string :quality

      t.timestamps
    end
  end
end
