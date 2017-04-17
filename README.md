# prelude-personal
My prelude customisations

## Installation

    $ rm -rf $PATH_TO_PRELUDE/personal
    $ git clone --recursive git@github.com:taryk/prelude-personal.git $PATH_TO_PRELUDE/personal

## Dependencies

### A list of external programs used

* ag
* ctags
* markdown
* perlbrew

### Install them

    $ brew install ctags ag markdown
    $ cpanm App::perlbrew

### Emacs packages

The following Emacs packages get installed automatically on startup:

* [ag.el](https://stable.melpa.org/#/ag)
* [helm-git-grep](https://github.com/PythonNut/helm-git-grep/) `(FIXME: use melpa's package once it gets fixed)`
* [highlight-symbol](https://stable.melpa.org/#/)
* [perlbrew](https://stable.melpa.org/#/ag)
* [perspective](https://stable.melpa.org/#/perspective)
* [yasnippet](https://stable.melpa.org/#/yasnippet)

## Keybindings

#### highlight-symbol

Keybinding | Function | Description
---------- | -------- | -----------
<kbd>C-F3</kbd> | `highlight-symbol` | Toggle highlighting of the symbol at point
<kbd>F3</kbd> | `highlight-symbol-next` | Jump to the next location of the symbol at point within the buffer
<kbd>S-F3</kbd> | `highlight-symbol-prev` | Jump to the previous location of the symbol at point within the buffer
<kbd>M-F3</kbd> | `highlight-symbol-query-replace` | Replace the symbol at point with REPLACEMENT

#### helm-git-grep

Keybinding | Function | Description
---------- | -------- | -----------
<kbd>C-x C-g</kbd> | `helm-git-grep` | Helm git grep
<kbd>C-c C-g</kbd> | `helm-git-grep-at-a-point` | Helm git grep with symbol at point

#### perspective

Keybinding | Description
---------- | -----------
<kbd>M-p l</kbd> | Last perspective
<kbd>M-p i</kbd> | Open a perspective with `ielm`
<kbd>M-p n</kbd> | Open a perspective with notes

#### resizing windows

Keybinding | Function | Description
---------- | -------- | -----------
<kbd>M-s-up</kbd> | `enlarge-window` | Make the current window taller
<kbd>M-s-down</kbd> | `shrink-window` | Make the current window shorter
<kbd>M-s-left</kbd> | `shrink-window-horizontally` | Make the current window narrower
<kbd>M-s-right</kbd> | `enlarge-window-horizontally` | Make the current window wider
