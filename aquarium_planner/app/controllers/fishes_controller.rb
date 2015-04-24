class FishesController < ApplicationController
  require 'unirest'

  def show
    # These code snippets use an open-source library.
    @fish = Fish.find(params[:id])
    response = Unirest.get "http://en.wikipedia.org/w/api.php?action=parse&prop=text&page=#{@fish['wiki_url']}&format=json",
      headers:{
      "Accept" => "application/json"
    }

    @fish_page = response.body['parse']['text']['*']
    # raise @fish_page.inspect
  end
end
