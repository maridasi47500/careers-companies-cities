class CreateCompanyhasjobs < ActiveRecord::Migration[8.0]
  def change
    create_table :companyhasjobs do |t|
      t.integer :company_id
      t.integer :job_id

      t.timestamps
    end
  end
end
