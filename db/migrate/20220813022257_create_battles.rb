class CreateBattles < ActiveRecord::Migration[7.0]
  def change
    create_table :battles do |t|
      t.string :title
      t.integer :fight_date
      t.string :location
      t.boolean :result, default: false

      t.timestamps
    end
  end
end
