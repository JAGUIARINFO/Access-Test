class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def active_for_authentication?
    super && (not(disabled?))
  end

  validate :password_complexity

  def password_complexity
    #if password.present? and not password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d). /)
    return if password.blank? || password =~ /(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/
    #if password.present? and not password.match(/^(?=.*\d). /)
      errors.add :password, "must include at least one integer, one special character and six characters"
    
  end

end

#/^(?=.*\d)(?=.*([a-z]|[A-Z]))([\x20-\x7E]){8,40}$/


