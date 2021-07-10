class CreateIdols < ActiveRecord::Migration[6.1]
  def change
    create_table :idols do |t|
      t.string :name
      t.string :description
      t.string :video
      t.string :photo

      t.timestamps
    end
  end
end
