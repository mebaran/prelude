(prelude-ensure-module-deps '(nrepl-ritz))

;; (setq nrepl-popup-stacktraces-in-repl t)

(defun enable-ritz ()
  (require 'nrepl-ritz))
(add-hook 'nrepl-interaction-mode-hook 'enable-ritz)
