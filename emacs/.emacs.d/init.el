;; Melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Setup use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(crdt use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Load/install evil
(use-package evil
  :ensure t
  :config
  (evil-mode 1))


;; Avoid littering the user's filesystem with backups
(setq
    backup-by-copying t      ; don't clobber symlinks
    backup-directory-alist
        ;; '((".*" . (concat user-emacs-directory "saves/")))    ; don't litter my fs tree
        ;; '((".*" . (expand-file-name "saves/" user-emacs-directory)))
        '((".*" . "~/.emacs.d/saves/"))    ; don't litter my fs tree
    delete-old-versions t
    kept-new-versions 6
    kept-old-versions 2
    version-control t)       ; use versioned backups


;; Avoid littering of auto-saves
(setq auto-save-file-name-transforms
  `((".*" "~/.emacs.d/saves/" t)))

    ;;; Lockfiles unfortunately cause more pain than benefit
    (setq create-lockfiles nil)


;; UI improvements
(xterm-mouse-mode 1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(add-to-list 'default-frame-alist '(internal-border-width  . 30))
(setq-default indent-tabs-mode nil)
(set-face-attribute 'mode-line nil
                    :box '(:width 0))
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(global-prettify-symbols-mode t)
;; (set-frame-font "curie 12" nil t)


;; Enable the display of the current time, see DisplayTime
(display-time-mode 1)
;; Enable or disable the display of the current line number, see also LineNumbers
(line-number-mode 1)
;; Enable or disable the display of the current column number
(column-number-mode 1)
;; (for Emacs 22 and up) – Enable or disable the current buffer size, Emacs 22 and later, see size-indication-mode
(size-indication-mode 1)
;; Enable or disable laptop battery information, see DisplayBatteryMode.
(display-battery-mode 1)






;; Org customizations
(with-eval-after-load 'org
  (setq org-startup-indented t) ; Enable `org-indent-mode' by default
  (add-hook 'org-mode-hook #'visual-line-mode))

(setq org-hide-emphasis-markers t)
(defun my/modify-org-done-face ()
  (setq org-fontify-done-headline t)
  (set-face-attribute 'org-done nil :strike-through t)
  (set-face-attribute 'org-headline-done nil
                      :strike-through t))

(eval-after-load "org"
  (add-hook 'org-add-hook 'my/modify-org-done-face))

 (font-lock-add-keywords 'org-mode
                            '(("^ +\\([-*]\\) "
                               (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

  (require 'org-bullets)
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; ewal!
(use-package ewal
  :ensure t
  :init (setq ewal-use-built-in-always-p nil
              ewal-use-built-in-on-failure-p t
              ))
(use-package ewal-spacemacs-themes
  :ensure t
  :init (progn
          (show-paren-mode +1))
  :config (progn
            (load-theme 'ewal-spacemacs-modern t)
            (enable-theme 'ewal-spacemacs-modern)))

(load-theme 'xresources t)
            (enable-theme 'xresources)


