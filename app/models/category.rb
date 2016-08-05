class Category < ActiveRecord::Base
  has_many: products, dependence: :destroy
end
