class RenameCollaboratorsToEmailAddressesOfAnyoneElseYouWantToBeCopiedIn < ActiveRecord::Migration[5.1]
  def change
    rename_column :supports, :collaborators, :email_addresses_of_anyone_else_you_want_to_be_copied_in
  end
end
