class AddInfoToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :size, :string
    add_column :videos, :bitrate, :string
    add_column :videos, :resolution, :string
    add_column :videos, :video_stream, :string
    add_column :videos, :video_codec, :string
    add_column :videos, :colorspace, :string
    add_column :videos, :width, :string
    add_column :videos, :height, :string
    add_column :videos, :audio_stream, :string
    add_column :videos, :audio_codec, :string
    add_column :videos, :audio_sample_rate, :string
    add_column :videos, :audio_channels, :string
  end
end
