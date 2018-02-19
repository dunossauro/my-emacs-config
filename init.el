;; Emacs configs.

(package-initialize)

;; Remove welcome message
(setq inhibit-startup-message t)
;; ----------------------------
;; term macro in new window
;; Shell in a new vertical windows
;; TODO

;; Remove menus
(menu-bar-mode -1)
(tool-bar-mode -1)

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; neotree
(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(setq neo-smart-open t)
(global-set-key [(control ?\\)] 'neotree-toggle) ;; atom key

;; Flake8
(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
(setq flymake-python-pyflakes-executable "flake8")

;; Flyc
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Theme
(load-theme 'darkside t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("7334f761edfccfa87893211f651220a0899bb206f042b856393b7af22b0413e2" default)))
 '(package-selected-packages
   (quote
    (ergoemacs-mode ergoemacs-status python-docstring python neotree multishell flymake-python-pyflakes flycheck))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ergoemacs
(require 'ergoemacs-status)
(ergoemacs-status-mode)
