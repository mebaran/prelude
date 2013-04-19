(prelude-ensure-module-deps '(ac-nrepl))

(require 'auto-complete-config)
(ac-config-default)

(eval-after-load "auto-complete"
  '(progn
     (setq ac-auto-start nil)
     (ac-set-trigger-key "TAB")
     (add-to-list 'ac-modes 'nrepl-mode)))

(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))
(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)

(require 'ac-nrepl)
(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
(add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)

(add-hook 'nrepl-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'nrepl-interaction-mode-hook 'set-auto-complete-as-completion-at-point-function)
