json.extract! writer, :id, :name, :email, :created_at, :updated_at
json.url writer_url(writer, format: :json)
