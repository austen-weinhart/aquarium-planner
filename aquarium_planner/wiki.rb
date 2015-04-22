require 'unirest'
# These code snippets use an open-source library.
response = Unirest.get "http://en.wikipedia.org/w/api.php?action=parse&prop=text&page=Frogfish&format=json",
  headers:{
    "Accept" => "application/json"
  }

  puts response.body['parse']['text']['*']