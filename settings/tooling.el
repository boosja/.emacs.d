(use-package s)
(use-package dash)
(use-package diminish)

;; No need to remind me about eldoc-mode all the time
(diminish 'eldoc-mode)

;; Shorthand for interactive lambdas
(defmacro λ (&rest body)
  `(lambda ()
     (interactive)
     ,@body))

;; insert `λ'
(global-set-key (kbd "s-l") (λ (insert "\u03bb")))

(defvar my/previous-window-configuration nil)

;; Instrument a `command' to store the current window configuration in
;; `register' and then going fullscreen.
(defmacro wrap-fullscreen (command)
  `(defadvice ,command (around ,(intern (concat "wrap-" (symbol-name command) "-fullscreen")) activate)
     (let ((my/prev (list (current-window-configuration) (point-marker))))
       ad-do-it
       (delete-other-windows)
       (setq-local my/previous-window-configuration my/prev))))

(provide 'tooling)
