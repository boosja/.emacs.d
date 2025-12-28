;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen
(setq inhibit-startup-message t)

;; Color all language features
(setq font-lock-maximum-decoration t)

;; Highlight current line
(global-hl-line-mode 1)

(blink-cursor-mode -1)
(tooltip-mode -1)

(load-theme 'default-black t)

;; Fullscreen the frame
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; Hide frame bar
(set-frame-parameter nil 'undecorated t)

(defvar bsj/is-decorated t)
(defun toggle-frame-decoration ()
  (interactive)
  (setq bsj/is-decorated (not bsj/is-decorated))
  (set-frame-parameter nil 'undecorated bsj/is-decorated))

(global-set-key (kbd "C-x 5 x") 'toggle-frame-decoration)

;; Don't beep. Just blink the modeline on errors.
(setq ring-bell-function (lambda ()
                           (invert-face 'mode-line)
                           (run-with-timer 0.05 nil 'invert-face 'mode-line)))

(provide 'appearance)
