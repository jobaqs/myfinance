json.array!(@expense_types) do |expense_type|
  json.extract! expense_type, :id, :name, :user_id
  json.url expense_type_url(expense_type, format: :json)
end
