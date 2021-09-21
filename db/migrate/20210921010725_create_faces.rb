class CreateFaces < ActiveRecord::Migration[6.1]
  def change
    create_table :faces do |t|
      t.integer :value
      t.string :url
      t.timestamps
    end
  end
end
