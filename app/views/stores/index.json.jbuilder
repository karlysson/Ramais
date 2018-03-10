json.array!(@stores) do |store|
  json.extract! store, :id, :name, :address, :city_id, :mark_id, :phone, :zip_code
  json.url store_url(store, format: :json)
end
