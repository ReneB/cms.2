json.array!(@accounts) do |account|
  json.extract! account, :id, :display_name, :login_code, :group
  json.url account_url(account, format: :json)
end
