class CreateEmployerhaspubliqueinstitutions < ActiveRecord::Migration[8.0]
  def change
    create_table :employerhaspubliqueinstitutions do |t|
      t.integer :employer_id
      t.integer :publiqueinstitution_id

      t.timestamps
    end
  end
end
