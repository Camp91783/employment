class AddAttachmentAttachmentToPostings < ActiveRecord::Migration
  def self.up
    change_table :postings do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :postings, :attachment
  end
end
