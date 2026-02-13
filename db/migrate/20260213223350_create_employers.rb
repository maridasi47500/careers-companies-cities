class CreateEmployers < ActiveRecord::Migration[8.0]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :pic
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
