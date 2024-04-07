class AssignDefaultCollectorToCards < ActiveRecord::Migration[7.0]
  def up
    default_collector = Collector.first
    Card.where(collector_id: nil).update_all(collector_id: default_collector.id) if default_collector
  end

  def down
    
  end
end
