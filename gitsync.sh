git pull scripts master
git add --all
git status
echo 'Commit all changes?[y/n]'
read text
if [ "$text" == "y" ]
	then
	echo 'enter your commit message:'
	read message
	git commit -m="$message"
	git push scripts master
fi
