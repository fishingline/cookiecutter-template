function setup \
    --description 'Setup your fishtape tests'

    @echo "setup"
    set -g PRJ_HOME (realpath (dirname (status filename))/../..)
    set fish_function_path $PRJ_HOME/functions $fish_function_path
end
