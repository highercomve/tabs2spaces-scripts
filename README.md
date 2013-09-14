Tabs2spaces
===========

This is a solution to convert tabs to 2 spaces from all rb files in a project folder. I write a version on Ruby and Another on Shell, this was just playing is not ultra tested only in my actual projects

## Download 

	git clone https://github.com/highercomve/tabs2spaces.git
	
	cd tabs2spaces


### How to use it

	sh tabs2spaces.sh "./project/directory"

or

	ruby tabs2spaces.rb "./project_directory"

If you want to use it like a normal shell command (without sh or ruby command), you have to install.

	sudo chmod 755 tabs2spaces.rb 
	
or 
	
	sudo chmod 755 tabs2spaces.sh
	
	sudo cp tabs2spaces.rb /usr/local/bin/tabs2spaces
	
And now you can use it anywhere in the system

	cd /dontcarewhere/
	# inside /dontcarewhere
	
	tabs2spaces ./railsproject/app

