(defvar box-drawing-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map "h" (lambda () (interactive) (insert "│")))
    (define-key map "n" (lambda () (interactive) (insert "─")))
    (define-key map "u" (lambda () (interactive) (insert "┌")))
    (define-key map "i" (lambda () (interactive) (insert "┬")))
    (define-key map "o" (lambda () (interactive) (insert "┐")))
    (define-key map "j" (lambda () (interactive) (insert "├")))
    (define-key map "k" (lambda () (interactive) (insert "┼")))
    (define-key map "l" (lambda () (interactive) (insert "┤")))
    (define-key map "m" (lambda () (interactive) (insert "└")))
    (define-key map "," (lambda () (interactive) (insert "┴")))
    (define-key map "." (lambda () (interactive) (insert "┘")))
    map)
  "Keymap for box-drawing-mode.")

(define-minor-mode box-drawing-mode
  "Minor mode for inserting box-drawing characters."
  :lighter " Box"
  :keymap box-drawing-mode-map)

(provide 'box-drawing-mode)
