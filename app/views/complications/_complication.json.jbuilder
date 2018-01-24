json.extract! complication, :id, :title, :area, :severity, :comment, :operation_id, :created_at, :updated_at
json.url complication_url(complication, format: :json)
