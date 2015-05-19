json.array!(@examples) do |example|
  json.extract! example, :id, :title
  json.url example_url(example, format: :json)
end
