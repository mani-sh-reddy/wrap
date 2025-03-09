#!/bin/bash
# wrap: A collection of bash utilities wrapped and accessible via keywords

usage() {
    cat <<EOF
Usage: wrap <command> [options]

Commands:
  select --options <option1> <option2> ... <optionN>
      Presents a selection menu to the user.

Example:
  wrap select --options "option1" "option2" "option3"
EOF
}

if [ $# -lt 1 ]; then
    usage
    exit 1
fi

command="$1"
shift

case "$command" in
select)
    if [ "$1" != "--options" ]; then
        echo "Error: 'select' command requires the --options flag."
        usage
        exit 1
    fi
    shift
    if [ $# -eq 0 ]; then
        echo "Error: No options provided."
        usage
        exit 1
    fi

    options=("$@")

    PS3="Please select an option: "

    select opt in "${options[@]}"; do
        if [ -n "$opt" ]; then
            echo "You selected: $opt"
            break
        else
            echo "Invalid selection, please try again."
        fi
    done
    ;;
*)
    echo "Error: Unknown command '$command'"
    usage
    exit 1
    ;;
esac
