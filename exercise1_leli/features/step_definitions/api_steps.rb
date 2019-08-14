Given("I want to get users with in {string}") do |url|
    @url = url
end

Given("I want to fetch users data with id {string}") do |id|
    @resp = Faraday.get "#{@url}/#{id}"
    @content = JSON.parse(@resp.body)
end

Then("I should get users with id {string}") do |id|
    expect(@content['id']).to eq id.to_i
end

Then("I should get users with name {string}") do |name|
    expect(@content['name']).to eq name
end

Then("I should get users with username {string}") do |username|
  expect(@content['username']).to eq username
end

Then("I should get users with email {string}") do |email|
  expect(@content['email']).to eq email
  puts email
end

And ("I should get user with user address on {string}") do |address|
  puts address
  expect(@content['address'].to eq address)
end

Then("Show me the response") do
  puts @content[5]
end

Then("Response status should be {string}") do |status|
  expect(@resp.status).to eq(status.to_i)
end