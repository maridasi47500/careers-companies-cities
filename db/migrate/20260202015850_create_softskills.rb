class CreateSoftskills < ActiveRecord::Migration[8.0]
  def change
    create_table :softskills do |t|
      t.string :name

      t.timestamps
    end
  end
end
