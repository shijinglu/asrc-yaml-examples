local_head=$(git rev-parse master)
remote_head=$(git ls-remote origin master | cut -f1)

[[ $local_head != $remote_head ]] && (
    git checkout master
    git fetch origin master
    git reset --hard origin/master
)