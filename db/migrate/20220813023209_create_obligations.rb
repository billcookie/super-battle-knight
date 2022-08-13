class CreateObligations < ActiveRecord::Migration[7.0]
  def change
    create_table :obligations do |t|
      t.references :character, null: false, foreign_key: true
      t.references :battle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
