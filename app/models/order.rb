class Order < ApplicationRecord
  validates :name,  :presence => true,
            :length => {:minimum => 1, :maximum => 100}

  validates :email,  :presence => true,
    :length => {:minimum => 1, :maximum => 100}


end
