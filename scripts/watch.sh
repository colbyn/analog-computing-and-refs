set -e

watchexec --exts tex --ignore output/ -- "./scripts/build.sh $1 && echo '\n==reloaded==\n'"
