class RemovePublic < ActiveRecord::Migration
  def change
    remove_foreign_key :publics, :jars
  end
end
