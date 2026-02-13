class CreatePlateformedemploihasjobs < ActiveRecord::Migration[8.0]
  def change
    create_table :plateformedemploihasjobs do |t|
      t.integer :plateformedemploi_id
      t.integer :job_id

      t.timestamps
    end
  end
end
