class CreateHandCheckers < ActiveRecord::Migration[6.1]
  def change
    create_table :hand_checkers do |t|

      t.timestamps
    end
  end
end
