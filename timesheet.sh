# generates a timesheet listing using your git commit history
# cd into a git repo
# ./some/path/timesheet.sh 08/16 # date format is MM/DD

basename "$PWD"|gsed 's/-app//g'
git log --pretty="format:%ad %s" --date=format:"%m/%d" --author=Ramin|grep $1 | gsed "s,^$1,*,g"
