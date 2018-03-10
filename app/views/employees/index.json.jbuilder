json.array!(@employees) do |employee|
  json.extract! employee, :id, :store_id, :departament_id, :name, :phone
  json.url employee_url(employee, format: :json)
end
