json.array!(@users) do |user|
  json.extract! user, :id, :username, :lastname, :birthdate, :email, :active
  json.url user_url(user, format: :json)
end
