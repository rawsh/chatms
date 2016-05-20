class AddLinkToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :parent, :integer
  end
end
