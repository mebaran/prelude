(require 'prelude-haskell)

(prelude-ensure-module-deps '(ghc ghci-completion))

(autoload 'ghc-init "ghc" nil t)

(eval-after-load "haskell-mode"
  '(add-hook 'haskell-mode-hook (lambda () (interactive-haskell-mode))))
