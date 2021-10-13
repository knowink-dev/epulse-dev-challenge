class CreatePollWorkers < ActiveRecord::Migration[6.1]
  def change
    create_table :poll_workers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :job_title
      t.string :phone_number

      t.timestamps
    end
  end
end
