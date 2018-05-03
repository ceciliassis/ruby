require 'rest-client'
require 'json'

url = 'http://api.icndb.com/jokes/random'

response = RestClient.get(url)
json    = JSON.parse(response)

# puts json.fetch('value').fetch('joke')

jj json