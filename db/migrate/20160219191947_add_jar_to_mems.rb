class AddJarToMems < ActiveRecord::Migration
  def change
    add_reference :mems, :jar, index: true, foreign_key: true
  end
end
