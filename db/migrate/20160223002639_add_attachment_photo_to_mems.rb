class AddAttachmentPhotoToMems < ActiveRecord::Migration
  def self.up
    change_table :mems do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :mems, :photo
  end
end
