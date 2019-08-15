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
end

Then("I should get users with address street {string}") do |street|
  expect(@content['address']['street']).to eq street
end

Then("Show me the response") do
  puts @content
end

Then("Response status should be {string}") do |status|
  expect(@resp.status).to eq(status.to_i)
end

#referensi https://gist.github.com/metade/1022439
#referensi https://github.com/hidroh/cucumber-api/tree/f44b1ae0eff51f779ba1185b116ef22109f483ed
#referensi https://jsonpath.com/?
