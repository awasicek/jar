class AddUserToJars < ActiveRecord::Migration
  def change
    add_reference :jars, :user, index: true, foreign_key: true
  end
end
