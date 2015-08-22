class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def admin?
  	role == :admin
  end

  def author?
  	role == "author"
  end

  def author
  	if self.author?
  		Author.where(:user_id => self.id).first
  	else
  		nil
  	end
  end

end
