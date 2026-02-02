class CreateFormations < ActiveRecord::Migration[8.0]
  def change
    create_table :formations do |t|
      t.integer :user_id
      t.string :ecole
      t.string :diplome
      t.string :lieu
      t.string :debut
      t.string :fin

      t.timestamps
    end
  end
end
