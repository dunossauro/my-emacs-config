;; Emacs configs.

(package-initialize)

;; Remove welcome message
(setq inhibit-startup-message t)

;; Remove menus
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; neotree
(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(setq neo-smart-open t)
(global-set-key [(control ?\\)] 'neotree-toggle) ;; atom key

;; Python autocomplete-jedi
(add-hook 'python-mode-hook 'jedi:ac-setup)
(setq jedi:complete-on-dot t)                 ; optional

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
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "7334f761edfccfa87893211f651220a0899bb206f042b856393b7af22b0413e2" default)))
 '(package-selected-packages
   (quote
    (moe-theme smart-mode-line-powerline-theme smart-mode-line powerline shell-pop jedi ergoemacs-mode ergoemacs-status python-docstring python neotree multishell flymake-python-pyflakes flycheck)))
 '(shell-pop-term-shell "/usr/bin/fish")
 '(shell-pop-universal-key "C-t")
 '(shell-pop-window-position "bottom")
 '(shell-pop-window-size 30))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ergoemacs
(require 'ergoemacs-mode)
(setq ergoemacs-theme nil)
(setq ergoemacs-keyboard-layout "us")
(ergoemacs-mode 1)
;; (require 'ergoemacs-status)
;; (ergoemacs-status-mode)    
;; (push 'flyspell-mode ergoemacs-status--suppressed-minor-modes)

;; shell-pop
(require 'shell-pop)


;; line-numbers
(global-linum-mode t)

;; powerline
(require 'powerline)
(require 'moe-theme)
(powerline-moe-theme)
(setq moe-theme-highlight-buffer-id t)
(powerline-center-theme)
