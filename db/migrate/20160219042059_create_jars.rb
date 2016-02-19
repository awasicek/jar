class CreateJars < ActiveRecord::Migration
  def change
    create_table :jars do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
