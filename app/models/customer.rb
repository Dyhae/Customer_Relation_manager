class Customer < ApplicationRecord

  validates :name,:surname, presence: true

  validates_each :name, :surname do |record, attr, value|
    record.errors.add(attr, 'must start with upper case') if value =~ /\A[a-z]/
  end
  
end
