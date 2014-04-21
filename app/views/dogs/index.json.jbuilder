json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :age, :photo, :photo_name
  json.url dog_url(dog, format: :json)
end
