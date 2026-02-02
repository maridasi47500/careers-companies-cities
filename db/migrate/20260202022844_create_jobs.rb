class CreateJobs < ActiveRecord::Migration[8.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.integer :secteur_id
      t.integer :contrat_id
      t.integer :jobfamily_id
      t.string :lieu

      t.timestamps
    end
  end
end
