;; Add settings to load-path
(add-to-list 'load-path (expand-file-name "settings" user-emacs-directory))

;; Swap super and meta keys
(setq x-meta-keysym 'super)
(setq x-super-keysym 'meta)

;; Set up appearance early
(require 'appearance)

;; Configure the package manager
(require 'packages)

;; Sanity
(require 'sane-defaults)

;; Set up tooling for the rest of the configuration
(require 'tooling)

;; Add utilities
(require 'navigation)
(require 'buffers)
