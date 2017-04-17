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

