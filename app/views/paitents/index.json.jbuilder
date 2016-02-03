json.array!(@paitents) do |paitent|
  json.extract! paitent, :id, :name
  json.url paitent_url(paitent, format: :json)
end
