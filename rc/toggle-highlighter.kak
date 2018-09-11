define-command toggle-highlighter -params .. -docstring 'toggle-highlighter <path> <type> [parameter]…: Toggle highlighter' %{
  try %{
    add-highlighter %arg(@)
    echo -markup {green} %arg(@)
  } catch %{
    remove-highlighter %sh{
      path=$1
      shift
      name=$(echo "$@" | sed 's/ /_/g')
      echo "$path$name"
    }
    echo -markup {red} %arg(@)
  }
}
