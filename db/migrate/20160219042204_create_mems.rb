class CreateMems < ActiveRecord::Migration
  def change
    create_table :mems do |t|
      t.string :date
      t.text :body

      t.timestamps null: false
    end
  end
end
