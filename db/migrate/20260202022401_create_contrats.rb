class CreateContrats < ActiveRecord::Migration[8.0]
  def change
    create_table :contrats do |t|
      t.string :name

      t.timestamps
    end
  end
end
