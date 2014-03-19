json.array!(@codepostals) do |codepostal|
  json.extract! codepostal, :id, :code
  json.url codepostal_url(codepostal, format: :json)
end
