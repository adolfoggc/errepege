class CreateIndexVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :index_videos do |t|
      t.references :npc, foreign_key: true

      t.timestamps
    end
  end
end
