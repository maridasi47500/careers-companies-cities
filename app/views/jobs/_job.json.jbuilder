json.extract! job, :id, :title, :description, :secteur_id, :contrat_id, :jobfamily_id, :lieu, :created_at, :updated_at
json.url job_url(job, format: :json)
