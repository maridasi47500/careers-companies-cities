class CreateSecteurs < ActiveRecord::Migration[8.0]
  def change
    create_table :secteurs do |t|
      t.string :name

      t.timestamps
    end
  end
end
