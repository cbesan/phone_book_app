json.array!(@companies) do |company|
  json.extract! company, :id, :name, :state
  json.url company_url(company, format: :json)
end
