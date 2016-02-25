class RemovePublicTable < ActiveRecord::Migration
  def change
    drop_table :publics
  end
end
