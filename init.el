;; Add settings to load-path
(add-to-list 'load-path (expand-file-name "settings" user-emacs-directory))

;; Set up appearance early
(require 'appearance)

;; Configure the package manager
(require 'packages)

;; Sanity
(require 'sane-defaults)

;; Add utilities
(require 'buffers)
