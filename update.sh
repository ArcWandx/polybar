if [ "$1" = "-d" ]; then
	git diff
	exit
fi

# If first parameter is empty, default message
git add .
if [ -z "$1" ]; then
	git commit -m "Update dotfiles"
else
	git commit -m "$1"
fi
git push
