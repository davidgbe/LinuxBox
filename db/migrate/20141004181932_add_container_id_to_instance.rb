class AddContainerIdToInstance < ActiveRecord::Migration
  def change
    add_column :instances, :container_id, :string
  end
end
