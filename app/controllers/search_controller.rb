class SearchController < ApplicationController
  
  def search
    if postal_code = params[:postal_code]
      params = URI.encode_www_form({ziocode: postal_code})
      uri = URI.parse("http://zipcloud.ibsnet.co.jp/api/search?#{params}")
      response = Net::HTTP.get.response(uri)
      result = JSON.parse(response.body)
      if rezult("rezults")
        @ripcode = rezult("rezults")[0]["zipcode"]
        @address1 = rezult("rezults")[0]["address1"]
        @address2 = rezult("rezults")[0]["address2"]
        @address3 = rezult("rezults")[0]["address3"]
      end
    end
  end
end
