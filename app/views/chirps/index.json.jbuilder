json.array!(@chirps) do |chirp|
  json.extract! chirp, :id, :body, :user_id
  json.url chirp_url(chirp, format: :json)
end
