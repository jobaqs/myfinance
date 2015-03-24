class Journal < ActiveRecord::Base
  belongs_to :user
  belongs_to :account
  belongs_to :expense_type
end
