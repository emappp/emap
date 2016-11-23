class CreateCheckins < ActiveRecord::Migration[5.0]
  def change
    create_table :checkins do |t|
      t.string :user_id
      t.string :status
      t.timestamps
    end
  end
end
