class RenameEmailToYourEmailAddress < ActiveRecord::Migration[5.1]
  def change
    rename_column :supports, :email, :your_email_address
  end
end
