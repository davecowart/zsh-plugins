hyde() {
	local sitename=$1
	git clone git@github.com:krisb/jekyll-template.git $1
	cd $1
	rm -rf .git
	git init
	git add -A
	git commit -m "init template from https://github.com/krisb/jekyll-template"

	local ghuser=$(git config github.user)	
	git remote add origin git@github.com:${ghuser}/${sitename}.git
	git push -u origin master
}
