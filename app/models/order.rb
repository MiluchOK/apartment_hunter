class Order < ApplicationRecord
  validates :name,  :presence => true,
            :length => {:minimum => 2, :maximum => 100}

  validates :email,  :presence => true,
    :length => {:minimum => 2, :maximum => 100}


end
