class AddDetailsToCards < ActiveRecord::Migration[7.1]
  def change
    add_column :cards, :attack_value, :integer
    add_column :cards, :defense_value, :integer
    add_column :cards, :effect, :text
  end
end
