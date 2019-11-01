define-command toggle-highlighter -params .. -docstring 'toggle-highlighter <path> <type> [parameter]…: Toggle highlighter' %{
  try %{
    add-highlighter %arg(@)
    echo -markup {green} %arg(1) %arg(2)
  } catch %{
    remove-highlighter %sh{
      path=$1
      path_last_character=$(printf "$path" | tail -c 1)
      if test $path_last_character != /; then
        # Explicit name
        echo "$path"
      else
        # Auto-generated name
        shift
        name=$(echo "$@" | sed 's/ /_/g')
        printf '%s%s' "$path" "$name"
      fi
    }
    echo -markup {red} %arg(1) %arg(2)
  }
}
