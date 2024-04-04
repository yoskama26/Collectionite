class CreateCollectors < ActiveRecord::Migration[7.1]
  def change
    create_table :collectors do |t|
      t.string :name

      t.timestamps
    end
  end
end
