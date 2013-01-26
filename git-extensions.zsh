alias glog='git log --format="%Cgreen%h%Creset %C(cyan)%an%Creset - %s %Cgreen(%cr)%Creset" --graph --date=relative'
alias gpo='git push origin master'
dqa() {
	git fetch origin
	git checkout master
	git pull origin master
	git checkout qa
	git fetch qa
	git pull origin qa
	git merge master
	git push origin qa
	git checkout master
}
duat() {
	git fetch origin
	git checkout master
	git pull origin master
	git checkout uat
	git fetch uat
	git pull origin uat
	git merge master
	git push origin uat
	git checkout master
}
gdeploy() {
	gpo
	dqa
	duat
}
