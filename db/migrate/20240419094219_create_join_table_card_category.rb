class CreateJoinTableCardCategory < ActiveRecord::Migration[7.1]
  def change
    create_join_table :cards, :categories do |t|
      # t.index [:card_id, :category_id]
      # t.index [:category_id, :card_id]
    end
  end
end
