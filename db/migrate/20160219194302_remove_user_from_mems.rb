class RemoveUserFromMems < ActiveRecord::Migration
  def change
    remove_reference :mems, :user, index: true, foreign_key: true
  end
end
