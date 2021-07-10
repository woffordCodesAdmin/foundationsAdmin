class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :topic
      t.string :video

      t.timestamps
    end
  end
end
