authorization do
	role :admin do
		has_permission_on [:authors], :to => [:index, :new, :create, :destroy]
	end

	role :author do
		has_permission_on [:authors], :to => [:show]
	end
end

privileges do 
   privilege :manage, :includes => [:read, :insert, :alter, :remove]
   privilege :insert, :includes => [:new, :create]
   privilege :alter, :includes => [:edit, :update]
   privilege :remove, includes: [:destroy]
   privilege :read, :include => [:index, :show]
end