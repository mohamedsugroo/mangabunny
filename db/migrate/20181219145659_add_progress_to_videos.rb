class AddProgressToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :progress, :string
    add_column :videos, :progress_status, :string
  end
end
