;;; settings.el --- Store basic settings
;;; Commentary:
;;; Place to put basic settings

;;; Code:
(set-default-font "-outline-Consolas-normal-r-normal-normal-14-97-96-96-c-*-iso8859-1")
(load-theme 'solarized-dark t)

(setq prelude-guru nil)
(setq prelude-whitespace nil)

;; a great lisp coding hook
(defun prelude-lisp-coding-defaults ()
  (paredit-mode +1))

(setq prelude-lisp-coding-hook 'prelude-lisp-coding-defaults)
(setq nrepl-popup-stacktraces-in-repl t)

;; interactive modes don't need whitespace checks
(defun prelude-interactive-lisp-coding-defaults ()
  (paredit-mode +1)
  (whitespace-mode -1))

(define-key global-map (kbd "RET") 'newline-and-indent)

(eval-after-load 'flycheck '(setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers)))
;;; settings.el ends here