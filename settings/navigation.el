;; Moving the cursor around

(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)

;; Cycle windows
(global-set-key (kbd "C-M-S-s-j") 'other-window)

(provide 'navigation)
