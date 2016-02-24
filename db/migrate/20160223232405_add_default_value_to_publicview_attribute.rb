class AddDefaultValueToPublicviewAttribute < ActiveRecord::Migration
  def change
  end

  def up
    change_column :jars, :publicview, :boolean, :default => false
  end

  def down
    change_column :jars, :publicview, :boolean, :default => nil
  end

end
