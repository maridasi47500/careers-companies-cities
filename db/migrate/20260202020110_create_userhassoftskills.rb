class CreateUserhassoftskills < ActiveRecord::Migration[8.0]
  def change
    create_table :userhassoftskills do |t|
      t.integer :user_id
      t.integer :softskill_id

      t.timestamps
    end
  end
end
