class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.string :ranking
      t.text :bio
      t.string :img_url

      t.timestamps
    end
  end
end
