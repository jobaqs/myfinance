class Account < ActiveRecord::Base
  belongs_to  :user

  validates_uniqueness_of :account_number
end
