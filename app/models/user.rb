class User < ActiveRecord::Base

  acts_as_authentic

  has_many :access_keys, :dependent => :destroy, :as => :owner
  
  accepts_nested_attributes_for :access_keys
  
  with_options :unless => :using_sso? do |without_sso|
    without_sso.validates_presence_of :login, :email
    without_sso.validates_presence_of :password, :on => :create
  end
  
  def using_sso?
    !access_keys.empty?
  end

end