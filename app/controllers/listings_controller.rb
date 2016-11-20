class ListingsController < ApplicationController
  def index_method
    @listing = Listing.all
    render 'index.html.erb'
  end

  def new_method
    render 'new.html.erb' 
  end
  def create_method
    listing = Listing.new(item: params["item"], description: params["description"], price: params["price"], location: ["location"])
    listing.save
    redirect_to "/listing"
  end
  def show_method
    listing_id = params[:id]
    @listing = Listing.find_by(id: listing_id)
    render 'show.hmtl.erb'
  end
end