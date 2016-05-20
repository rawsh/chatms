class DropIdeasTable < ActiveRecord::Migration
  def up
    drop_table :ideas
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
