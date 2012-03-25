class Account < ActiveRecord::Base
  attr_accessible :user, :acc_type, :area
  attr_protected :user, :acc_type, :area
end
