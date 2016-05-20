class RemoveTypeMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :type
    add_column :messages, :article_type, :string
  end
end
