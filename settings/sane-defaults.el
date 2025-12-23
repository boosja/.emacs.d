;; Show keybinding prefixes faster
(setq echo-keystrokes 0.1)

;; Move files to trash when deleting
(setq delete-by-moving-to-trash t)

;; Shift is more useful as a modifier
(setq shift-select-mode nil)

;; Answering just 'y' or 'n' will do
(defalias 'yes-or-no-p 'y-or-n-p)

;; UTF-8 please
(setq locale-coding-system 'utf-8) ; pretty
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8) ; with sugar on top

;; Always display column numbers
(setq column-number-mode t)

;; 80 chars is a good width.
(set-default 'fill-column 80)

;; Never insert tabs
(set-default 'indent-tabs-mode nil)

;; Show me empty lines after buffer end
(set-default 'indicate-empty-lines t)

;; Don't visually break lines for me, please
(setq-default truncate-lines t)

;; Sentences do not need double spaces to end. Period.
(set-default 'sentence-end-double-space nil)

;; Offer to create parent directories if they do not exist
;; http://iqbalansari.github.io/blog/2014/12/07/automatically-create-parent-directories-on-visiting-a-new-file-in-emacs/
(defun my-create-non-existent-directory ()
  (let ((parent-directory (file-name-directory buffer-file-name)))
    (when (and (not (file-exists-p parent-directory))
               (y-or-n-p (format "Directory `%s' does not exist! Create it?" parent-directory)))
      (make-directory parent-directory t))))

(add-to-list 'find-file-not-found-functions 'my-create-non-existent-directory)

;; Don't zoom individual buffers
(global-unset-key (kbd "C-x C-+"))

;; Disable zooming with pinch / mouse wheel
;;
;; In addition to zooming with `C-x C-+` and `C-x C--`, there's a different,
;; buffer specific zoom that zooms insanely fast.
(global-set-key (kbd "<pinch>") 'ignore)
(global-set-key (kbd "C-<wheel-up>") 'mwheel-scroll)
(global-set-key (kbd "C-<wheel-down>") 'mwheel-scroll)

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; We use git. Don't try all the other VC systems in existence first.
(setq vc-handled-backends '(Git))

;; Don't write lock-files, I'm the only one here
(setq create-lockfiles nil)

;; Write all autosave files in the tmp dir
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; No electric indent
(setq electric-indent-mode nil)

;; Automatically prompt for sudo in write protected files
(use-package auto-sudoedit
  :defer 1
  :config (auto-sudoedit-mode 1))

(provide 'sane-defaults)
