class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.string :email
      t.string :name
      t.text :message

      t.timestamps
    end
  end
end
