class CreatePubliqueinstitutions < ActiveRecord::Migration[8.0]
  def change
    create_table :publiqueinstitutions do |t|
      t.string :name
      t.string :lat
      t.string :lon

      t.timestamps
    end
  end
end
