(require 'package)
(add-to-list 'package-archives (cons "melpa" "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying t)
 '(backup-directory-alist (quote ((".*" . "~/.backups"))))
 '(custom-safe-themes
   (quote
    ("6de7c03d614033c0403657409313d5f01202361e35490a3404e33e46663c2596" "ed317c0a3387be628a48c4bbdb316b4fa645a414838149069210b66dd521733f" "938d8c186c4cb9ec4a8d8bc159285e0d0f07bad46edf20aa469a89d0d2a586ea" "5e52ce58f51827619d27131be3e3936593c9c7f9f9f9d6b33227be6331bf9881" default)))
 '(desktop-save t)
 '(desktop-save-mode t)
 '(disable-mouse-global-mode t nil (disable-mouse))
 '(display-time-mode t)
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(mouse-highlight nil)
 '(package-selected-packages
   (quote
    (disable-mouse jinja2-mode cider elpy helm-directory python-environment elscreen rjsx-mode ample-theme zenburn-theme)))
 '(ring-bell-function (quote ignore))
 '(safe-local-variable-values
   (quote
    ((eval progn
	   (put
	    (quote defendpoint)
	    (quote clojure-doc-string-elt)
	    3)
	   (put
	    (quote api/defendpoint)
	    (quote clojure-doc-string-elt)
	    3)
	   (put
	    (quote defsetting)
	    (quote clojure-doc-string-elt)
	    2)
	   (put
	    (quote setting/defsetting)
	    (quote clojure-doc-string-elt)
	    2)
	   (put
	    (quote s/defn)
	    (quote clojure-doc-string-elt)
	    2)
	   (define-clojure-indent
	     (assert 1)
	     (assoc 1)
	     (ex-info 1)
	     (execute-sql! 2)
	     (expect 0)
	     (match 1)
	     (merge-with 1)
	     (with-redefs-fn 1))))))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(undo-outer-limit 50000000)
 '(warning-suppress-types (quote ((\(undo\ discard-info\))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "gray15" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 65 :width normal :foundry "Bits" :family "Bitstream Vera Sans Mono"))))
 '(highlight-indentation-face ((t (:inherit fringe :background "gray16")))))

(elscreen-start)
(elpy-enable)

(add-hook 'before-save-hook
	  (lambda ()
	    (when (memq major-mode '(python-mode))
	      (delete-trailing-whitespace))))

