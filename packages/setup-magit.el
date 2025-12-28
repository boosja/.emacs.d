(use-package magit
  :defer t
  :custom
  (magit-section-initial-visibility-alist '((untracked . show)
                                            (unstaged . show)
                                            (unpushed . show)
                                            (unpulled . show)
                                            (stashes . show)))
  (magit-diff-refine-hunk t)

  :bind (("C-x m" . magit-status)
         (:map magit-status-mode-map
               ("q" . magit-quit)))

  :config
  (wrap-fullscreen magit-status)
  (wrap-fullscreen magit-init))

(provide 'setup-magit)
