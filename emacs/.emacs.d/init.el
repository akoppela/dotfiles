(defconst my/configuration-path (expand-file-name "~/.emacs.d/configuration.org"))

(defun my/open-configuration ()
  "Opens emacs configuration."
  (interactive)
  (find-file my/configuration-path))

(defun my/load-configuration ()
  "Loads/reloads emacs configuration at runtime."
  (interactive)
  (org-babel-load-file my/configuration-path))

(my/load-configuration)

;; BELOW AUTOGENERATED STUFF

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (counsel-dash nodejs-repl guix forge eslint-fix add-node-modules-path avy-menu expand-region evil-anzu save-visited-files iedit elfeed-org elfeed benchmark-init helpful which-key json-mode js2-mode flycheck-elm elm-mode emmet-mode web-mode org-bullets flycheck company evil-magit magit counsel-projectile treemacs-projectile treemacs-evil treemacs wgrep multiple-cursors counsel general evil-commentary evil-org evil-surround evil-collection evil rainbow-mode centered-cursor-mode spaceline base16-theme vlf auto-compile use-package)))
 '(session-use-package t nil (session)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'narrow-to-region 'disabled nil)
(put 'erase-buffer 'disabled nil)
(put 'narrow-to-page 'disabled nil)
