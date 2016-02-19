class AddUserToMems < ActiveRecord::Migration
  def change
    add_reference :mems, :user, index: true, foreign_key: true
  end
end
