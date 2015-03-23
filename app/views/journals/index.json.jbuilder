json.array!(@journals) do |journal|
  json.extract! journal, :id, :date_of_journal, :payee, :description, :account_id, :amount, :user_id, :is_posted
  json.url journal_url(journal, format: :json)
end
