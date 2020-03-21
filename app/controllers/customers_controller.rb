# frozen_string_literal: true

class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def alphabetized
    @customers_alphabetized = Customer.order(:name)
  end

  def missing_email
    @customers_missing_email = Customer.where(email: [nil, ''])
  end
end
