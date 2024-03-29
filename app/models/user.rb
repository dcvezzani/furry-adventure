class User < ActiveRecord::Base
  acts_as_cms_user :groups => [Cms::Group.find_by_code('cmsadmin')]

  # https://github.com/martinrehfeld/role_model
  #include RoleModel

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  # optionally set the integer attribute to store the roles in,
  # :roles_mask is the default
  #roles_attribute :roles_mask

  # declare the valid roles -- do not change the order if you add more
  # roles later, always append them at the end!
  #roles :admin, :manager, :associate
end
