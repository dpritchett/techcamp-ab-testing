class CreateTestResults < ActiveRecord::Migration
  def change
    create_table :test_results do |t|
      t.string :request_url
      t.string :params
      t.string :test_name
      t.string :test_value

      t.string :ip_address
      t.string :user_agent

      t.timestamps
    end
  end
end
