json.extract! jobevent, :id, :title, :description, :date, :lat, :lon, :created_at, :updated_at
json.url jobevent_url(jobevent, format: :json)
