class ChangeCollectorIdNotNullInCards < ActiveRecord::Migration[7.0]
  def change
    change_column_null :cards, :collector_id, false
  end
end
