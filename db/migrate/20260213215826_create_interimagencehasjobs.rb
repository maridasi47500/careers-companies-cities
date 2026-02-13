class CreateInterimagencehasjobs < ActiveRecord::Migration[8.0]
  def change
    create_table :interimagencehasjobs do |t|
      t.integer :interimagence_id
      t.integer :job_id

      t.timestamps
    end
  end
end
