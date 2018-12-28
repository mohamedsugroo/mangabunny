class AddAttachmentMediaToVideos < ActiveRecord::Migration[5.2]
  def self.up
    change_table :videos do |t|
      t.attachment :media
    end
  end

  def self.down
    remove_attachment :videos, :media
  end
end
