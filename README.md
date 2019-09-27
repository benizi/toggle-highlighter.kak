# Toggle highlighter

[![IRC][IRC Badge]][IRC]

###### [Usage](#usage) | [Documentation](#commands) | [Contributing](CONTRIBUTING)

> [Kakoune] extension to toggle highlighters.

## Installation

### [Pathogen]

``` kak
pathogen-infect /home/user/repositories/github.com/alexherbo2/toggle-highlighter.kak
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

[Kakoune]: https://kakoune.org
[IRC]: https://webchat.freenode.net/#kakoune
[IRC Badge]: https://img.shields.io/badge/IRC-%23kakoune-blue.svg
[Pathogen]: https://github.com/alexherbo2/pathogen.kak
