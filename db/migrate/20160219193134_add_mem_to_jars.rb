class AddMemToJars < ActiveRecord::Migration
  def change
    add_reference :jars, :mem, index: true, foreign_key: true
  end
end
