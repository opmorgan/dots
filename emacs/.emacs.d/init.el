#+NAME: init.el
#+BEGIN_SRC elisp
(require 'package)

;; Get the l33t package archive
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; UI improvements
(xterm-mouse-mode 1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(window-divider-mode -1)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

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

    ;;; Lockfiles unfortunately cause more pain than benefit
    (setq create-lockfiles nil)

;; OPTIONAL Live reloading of changes
(global-auto-revert-mode 1)
#+END_SRC
