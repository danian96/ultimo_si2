#the highest role with all the permissions.
 Role.create!(:name => "Super Admin")

 #other role
 Role.create!(:name => "Staff")

 #create a universal permission
 Permission.create!(:subject_class => "all", :action => "manage")

 #assign super admin the permission to manage all the models and controllers
 role = Role.find_by_name('Super Admin')
 role.permissions << Permission.all.first

 # create a user and assign the super admin role to him.
 user = User.new(:email => "admin@gmail.com", :password => "123123", :password_confirmation => "123123")
 user.role = role
 user.save!

User.create(:email => "neo@matrix.com", :password => "the_one", :password_confirmation => "the_one", :role_id => Role.find_by_name('Staff').id)
