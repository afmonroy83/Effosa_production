class AddAttachmentsToGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :attachments, :json
  end
end
