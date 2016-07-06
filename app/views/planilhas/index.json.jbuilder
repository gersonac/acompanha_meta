json.array!(@planilhas) do |planilha|
  json.extract! planilha, :id, :user_id
  json.url planilha_url(planilha, format: :json)
end
