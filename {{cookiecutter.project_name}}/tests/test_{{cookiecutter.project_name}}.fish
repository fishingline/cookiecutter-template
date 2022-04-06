
set -l thisfile (status filename)
set -l thisdir (dirname $thisfile)

@echo "=== "(basename $thisfile)" ==="
set fish_function_path $thisdir/functions $fish_function_path

setup

@test "Hello function exists" (functions hello >/dev/null) $status -eq 0

teardown
