class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.string :username
      t.string :time
      t.string :status

      t.timestamps
    end
  end
end
