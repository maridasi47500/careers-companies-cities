class CreateJobfamilies < ActiveRecord::Migration[8.0]
  def change
    create_table :jobfamilies do |t|
      t.string :name

      t.timestamps
    end
  end
end
