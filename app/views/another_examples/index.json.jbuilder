json.array!(@another_examples) do |another_example|
  json.extract! another_example, :id, :title
  json.url another_example_url(another_example, format: :json)
end
