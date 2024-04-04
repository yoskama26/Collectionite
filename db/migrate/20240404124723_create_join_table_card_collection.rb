class CreateJoinTableCardCollection < ActiveRecord::Migration[7.1]
  def change
    create_join_table :cards, :collections do |t|
      # t.index [:card_id, :collection_id]
      # t.index [:collection_id, :card_id]
    end
  end
end
