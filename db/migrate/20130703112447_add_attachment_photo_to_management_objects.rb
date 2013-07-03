class AddAttachmentPhotoToManagementObjects < ActiveRecord::Migration
  def self.up
    change_table :management_objects do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :management_objects, :photo
  end
end
