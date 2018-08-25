# Toggle highlighter

[![IRC][IRC Badge]][IRC]

###### [Usage](#usage) | [Documentation](#commands) | [Contributing](CONTRIBUTING)

> [Kakoune] extension to toggle highlighters.

## Installation

``` sh
ln --symbolic $PWD/rc $XDG_CONFIG_HOME/kak/autoload/toggle-highlighter
```

## Usage

``` kak
map global user l ':toggle-highlighter window/ number-lines<ret>'
```

``` kak
map global user w ':toggle-highlighter window/ wrap<ret>'
```

## Commands

- `toggle-highlighter` `<path>` `<type>` `[parameter]…`: Toggle highlighter

[Kakoune]: http://kakoune.org
[IRC]: https://webchat.freenode.net?channels=kakoune
[IRC Badge]: https://img.shields.io/badge/IRC-%23kakoune-blue.svg
