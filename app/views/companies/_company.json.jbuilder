json.extract! company, :id, :name, :lat, :lon, :created_at, :updated_at
json.url company_url(company, format: :json)
