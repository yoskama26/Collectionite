class AddCollectorToCards < ActiveRecord::Migration[7.1]
  def change
    add_reference :cards, :collector, null: true, foreign_key: true
  end  
end
