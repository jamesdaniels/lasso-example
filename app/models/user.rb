class User < ActiveRecord::Base

  acts_as_authentic do |config|
    config.with_options(:allow_nil => lambda { |u| u.using_sso? }, :allow_blank => lambda { |u| u.using_sso? }) do |nil_with_sso|
      nil_with_sso.merge_validates_confirmation_of_password_field_options
      nil_with_sso.merge_validates_length_of_password_field_options
      nil_with_sso.merge_validates_length_of_password_confirmation_field_options
      nil_with_sso.merge_validates_length_of_login_field_options
      nil_with_sso.merge_validates_format_of_login_field_options
      nil_with_sso.merge_validates_format_of_email_field_options
      nil_with_sso.merge_validates_length_of_email_field_options
      nil_with_sso.merge_validates_uniqueness_of_email_field_options
      nil_with_sso.merge_validates_uniqueness_of_login_field_options
      nil_with_sso.merge_validates_uniqueness_of_email_field_options
    end
  end

  has_many :access_keys, :dependent => :destroy, :as => :owner
  
  accepts_nested_attributes_for :access_keys
  
private
  
  def using_sso?
    !access_keys.empty?
  end

end