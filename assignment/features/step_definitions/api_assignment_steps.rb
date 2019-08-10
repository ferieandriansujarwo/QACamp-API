Given("I want to get user from this link {string}") do |link|
    @link = link
end

Given("I want to fetch user data with id {string}") do |userid|
    @response = Faraday.get "#{@link}/#{userid}"
    @contents = JSON.parse(@response.body)
end

Then("I should get user with id {string}") do |userid|
    expect(@contents['id']).to eq userid.to_i
end

Then("I should get user with name {string}") do |name|
    expect(@contents['name']).to eq name
end

And("I should get user with username {string}") do |username|
    expect(@contents['username']).to eq username
end

And("I should get user with email {string}") do |email|
    expect(@contents['email']).to eq email
end

And ("I should get user with address street {string}") do |street|
    expect(@contents['address']['street']).to eq street   
end

Then("Show me the response") do
  puts @contents
end

Then("Response status should be {string}") do |status|
  expect(@response.status).to eq(status.to_i)
end