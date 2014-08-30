class AdminUser < ActiveRecord::Base

	# if your name changed you can change there
	# to configure a diff table name'\\

	# short way
	attr_accessor:first_name

	attr_accessor:last_name

end
