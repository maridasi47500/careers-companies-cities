class CreateJobevents < ActiveRecord::Migration[8.0]
  def change
    create_table :jobevents do |t|
      t.string :title
      t.string :description
      t.date :date
      t.string :lat
      t.string :lon

      t.timestamps
    end
  end
end
