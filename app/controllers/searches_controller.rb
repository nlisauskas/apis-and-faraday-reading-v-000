class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
  req.params['ITPA0BQJR2ZNECQBKRBZAGUHD4YCF1WRS4DBESDQTOWUVJWV'] = client_id
  req.params['04P1UXS3E5T3KS1ECOEL3FXGO0PUQ5K5EVDDCQFSOTV0WT21'] = client_secret
  req.params['v'] = '20160201'
  req.params['near'] = params[:zipcode]
  req.params['query'] = 'coffee shop'
end
render 'search'
  end
end
