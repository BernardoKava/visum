json.extract! financialinstitution, :id, :name, :description, :address, :telephone, :email, :longitude, :latitude, :institution_code, :created_at, :updated_at
json.url financialinstitution_url(financialinstitution, format: :json)
