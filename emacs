;; We also use melpa for packages
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)
;; Enable clipboard
(setq x-select-enable-clipboard t)
;; Hide the toolbar
(tool-bar-mode 0)
;; Hide the menu bar
(menu-bar-mode -1)
;; Show the time
(display-time)
;; Hide(0) Show(1) the line numbers
(global-linum-mode 0)
;; Save the back up files ~README for example to another directory
(setq backup-directory-alist `(("." . "~/.emacs_backups")))
;; Add this to fix the problem from
;; http://tex.stackexchange.com/questions/24510/pdflatex-fails-within-emacs-app-but-works-in-terminal
;; so we can use LaTeX commands in AucTeX
(setenv "PATH" (concat "/usr/texbin" ":" (getenv "PATH")))

;; Hopefully ~ directory at C-x C-f
;; (setq default-directory "/Users/gary")

;; Enables yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet/snippets")
(require 'yasnippet)
(yas-global-mode 1)

;; Themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; The t flag turns off warnings, comment out for other 
;; (load-theme 'hipster t)
;; (load-theme 'oldlace t)
;; (load-theme 'gotham t)
;; (load-theme 'spacegray t)

;;(load-theme 'spacegray t)
(load-theme 'monokai t)
;; (set-frame-parameter nil 'background-mode 'dark)
;; (enable-theme 'solarized)

;; Auto fill is for wrapping 80 words ... 
(auto-fill-mode t)
;; We turn it on when we see text :-)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Using IDO Mode
(require 'ido)
(ido-mode t)

;; Flexible matching in IDO
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)

;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; Enables auto complete
(require 'auto-complete)
(global-auto-complete-mode t)


;; Parentheses better
(global-font-lock-mode 't)

;; This is it!

(require 'whitespace)
;; (setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))

;; Custom keybindings
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; Adds new lines instead of return
;; (setq next-line-add-newlines t)


(add-to-list 'load-path "~/.emacs.d/web-mode")
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))


