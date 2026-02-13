class CreatePubliqueinstitutionhasjobs < ActiveRecord::Migration[8.0]
  def change
    create_table :publiqueinstitutionhasjobs do |t|
      t.integer :publiqueinstitution_id
      t.integer :job_id

      t.timestamps
    end
  end
end
