class CreateEmployerhascompanies < ActiveRecord::Migration[8.0]
  def change
    create_table :employerhascompanies do |t|
      t.integer :employer_id
      t.integer :company_id

      t.timestamps
    end
  end
end
