json.array!(@tyys) do |tyy|
  json.extract! tyy, :id, :try, :ewqw
  json.url tyy_url(tyy, format: :json)
end
