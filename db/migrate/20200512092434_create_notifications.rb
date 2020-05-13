class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.string :type_of_notification, null: false, index: true, unique: true
      t.string :body_text
      t.timestamps
    end
  end
end
