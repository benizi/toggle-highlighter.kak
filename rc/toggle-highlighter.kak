define-command toggle-highlighter -params .. -docstring 'toggle-highlighter <path> <type> [parameter]…: Toggle highlighter' %{
  try %{
    add-highlighter %arg(@)
    echo -markup {green} %arg(@)
  } catch %{
    remove-highlighter "%arg(1)/%arg(2)"
    echo -markup {red} %arg(@)
  }
}
