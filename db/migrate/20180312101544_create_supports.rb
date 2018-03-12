class CreateSupports < ActiveRecord::Migration[5.1]
  def change
    create_table :supports do |t|
      t.string :name
      t.string :email
      t.string :message
      t.string :subject

      t.timestamps
    end
  end
end
