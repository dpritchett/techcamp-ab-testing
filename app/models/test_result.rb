class TestResult < ActiveRecord::Base
  serialize :params, Hash

  validates_presence_of :test_name
  validates_presence_of :test_value
  validates_presence_of :request_url
  validates_presence_of :ip_address
  validates_presence_of :params
  validates_presence_of :user_agent
end
