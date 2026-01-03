;; Moving the cursor around

(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)

;; Cycle windows
(global-set-key (kbd "C-M-S-s-j") 'other-window)

;; Keep them windows nice and balanced
(global-set-key (kbd "C-x 0") 'my/delete-window)
(global-set-key (kbd "C-x 2") 'my/split-window-down)
(global-set-key (kbd "C-x 3") 'my/split-window-right)

(defun my/delete-window ()
  (interactive)
  (delete-window)
  (balance-windows))

(defun my/split-window-down ()
  (interactive)
  (split-window-below)
  (windmove-down)
  (balance-windows))

(defun my/split-window-right ()
  (interactive)
  (split-window-right)
  (windmove-right)
  (balance-windows))

(provide 'navigation)
