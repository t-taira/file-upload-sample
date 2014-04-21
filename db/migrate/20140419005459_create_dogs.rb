class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :photo_uid
      t.string :photo_name

      t.timestamps
    end
  end
end
