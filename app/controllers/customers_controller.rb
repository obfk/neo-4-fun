class CustomersController < ApplicationController

  MAX_LIMIT = 10

  def index
    @customers = Customer.limit(params[:limit] || MAX_LIMIT).offset(params[:offset])
  end
end
