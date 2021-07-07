class CreateDailyVids < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_vids do |t|
      t.string :title
      t.string :description
      t.string :frame_url

      t.timestamps
    end
  end
end
