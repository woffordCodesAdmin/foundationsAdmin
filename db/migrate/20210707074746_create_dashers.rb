class CreateDashers < ActiveRecord::Migration[6.1]
  def change
    create_table :dashers do |t|
      t.string :index

      t.timestamps
    end
  end
end
