class User < ActiveRecord::Base
end

class Product < ActiveRecord::Base
end

class Item < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
end

class Order < ActiveRecord::Base
  belongs_to :user
  has_many :items
end

