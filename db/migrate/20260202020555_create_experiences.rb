class CreateExperiences < ActiveRecord::Migration[8.0]
  def change
    create_table :experiences do |t|
      t.integer :user_id
      t.string :title
      t.string :debut
      t.string :fin
      t.string :company
      t.string :lieu

      t.timestamps
    end
  end
end
