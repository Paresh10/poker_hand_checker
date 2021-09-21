class ChangeColumnOnFaces < ActiveRecord::Migration[6.1]
  def change
    change_column :faces, :value, :string
  end
end
