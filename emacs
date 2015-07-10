(setq load-path (cons "~/.emacs.d/lisp" load-path))

(require 'init)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
