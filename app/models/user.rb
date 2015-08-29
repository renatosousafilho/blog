class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :roles



  def admin?
  	type == "Admin"
  end

  def author?
  	type == "Author"
  end

  def author
  	if self.author?
  		Author.where(:user_id => self.id).first
  	else
  		nil
  	end
  end


 def role_symbols
    (roles || []).map {|r| r.title.to_sym}
  end

end
