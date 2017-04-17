;;; Compiled snippets and support files for `go-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'go-mode
                     '(("xml" "\\`xml:\"$1\"\\`" "xml" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/xml" nil nil)
                       ("test" "func Test$1(t *testing.T) {\n	$0\n}" "test" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/test" nil nil)
                       ("struct" "type $1 struct {\n	$0\n}" "struct" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/struct" nil nil)
                       ("range" "for ${1:key}, ${2:value} := range ${3:target} {\n    $0\n}" "range" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/range" nil nil)
                       ("pkg" "package ${1:`(car (last (split-string (file-name-directory buffer-file-name) \"/\") 2))`}\n" "pkg" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/pkg" nil nil)
                       ("meth" "func (${1:target}) ${2:name}(${3:arguments}) (${4:results}) {\n	$0\n}" "meth" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/meth" nil nil)
                       ("map" "map[${1:keytype}]${2:valuetype}" "map" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/map" nil nil)
                       ("main" "func main() {\n	$0\n}" "func main" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/main" nil nil)
                       ("json" "\\`json:\"$1\"\\`" "json" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/json" nil nil)
                       ("init" "func init() {\n	$0\n}\n" "init" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/init" nil nil)
                       ("imp" "import (\n	\"$1\"\n)" "imp" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/imp" nil nil)
                       ("ifunc" "func ($1) $2 {\n	$0\n}" "ifunc" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/ifunc" nil nil)
                       ("iferr" "if err != nil {\n	$0\n}" "iferr" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/iferr" nil nil)
                       ("func" "func ${1:name}(${2:arguments}) (${3:results}) {\n	$0\n}" "func" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/func" nil nil)
                       ("for" "for $1; $2; $3 {\n	$0\n}" "for (...; ...; ...) { ... }" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/for" nil nil)
                       ("cstring" "c${1:$(capitalize yas/text)} := C.CString($1)\ndefer C.free(unsafe.Pointer(c${1:$(capitalize yas/text)}))\n\n" "CString" nil nil
                        ((yas/indent-line 'fixed))
                        "/Users/taras/.emacs.d/personal/snippets/go-mode/cstring" nil nil)
                       ("<<" "$1 = append(${1:theSlice}, ${2:theValue})\n" "<<" nil nil nil "/Users/taras/.emacs.d/personal/snippets/go-mode/<<" nil nil)))


;;; Do not edit! File generated at Mon Apr 17 17:11:39 2017
