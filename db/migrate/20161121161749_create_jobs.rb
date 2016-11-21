class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :username
      t.string :place
      t.string :message
      t.string :priority
      t.string :assign_by

      t.timestamps
    end
  end
end
