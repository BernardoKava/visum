json.extract! network_switch, :id, :code_name, :branding, :number_of_ports, :s_location, :ip_address, :user_name, :password, :active, :notes, :user_id, :created_at, :updated_at
json.url network_switch_url(network_switch, format: :json)
