#USAGE: make git m="Test commit"
git:
	git add .
	git commit -m "$m"
	git push -u origin master 
