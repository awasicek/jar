class DefaultPublicView < ActiveRecord::Migration
  def change
    change_column_default(:jars, :publicview, false)
  end
end
