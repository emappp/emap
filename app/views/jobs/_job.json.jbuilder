json.extract! job, :id, :username, :place, :message, :priority, :assign_by, :created_at, :updated_at
json.url job_url(job, format: :json)