title: Dot Emacs
slug: dot-emacs
date: 2006-05-30 14:56:21
tags: 
category: blog
link: 
description: 
type: text
has_math: no
status: published

Emacs is almost infinately customisable; a fact I didn't really get to grips with this fact untill I found myself on a Fedora Core box a while back *with* a net connection but *without* my favourite set of keyboard short cuts. This really brought home how just a few simple customisations can come to be relied upon.

Determined never to be caught short in such a manner again I decided to make my .emacs permanently available, providing I have a net connection that is.

<!-- TEASER_END -->

```

`(fmakunbound 'c-mode)
(makunbound 'c-mode-map)
(fmakunbound 'c++-mode)
(makunbound 'c++-mode-map)
(makunbound 'c-style-alist)

(server-start)

(add-hook 'php-mode-hook 'turn-on-font-lock)
(load "cc-mode")
(c-add-style "Vicchi"
'("cc-mode"
(c-basic-offset . 4)
(c-offsets-alist . ((inline-open . 0)
(inclass . +)
(label . -4)
(substatement-open . 0)
(case-label . +)
))
)
)

(autoload 'javascript-mode "javascript-mode" "JavaScript mode" t)

(setq auto-mode-alist
(append '((".C$"  . c++-mode)
(".cxx$" . c++-mode)
(".hxx$" . c++-mode)
(".c$"  . c-mode)   ; to edit C code
(".h$"  . c++-mode)   ; to edit C code
(".imp$" . c-mode)  ; to edit Versant schema files
(".Rules$" . makefile-mode) ; to edit Makefile Rules
(".xml$" . sgml-mode)
(".cgi$" . perl-mode)		; to edit Webmin perl scripts
(".scp$" . shell-script-mode) ; to edit setld SCP files
(".k$" . shell-script-mode)	; to edit setld key files
(".js$" . javascript-mode)
("Makefile.Platform.*" . makefile-mode)
) auto-mode-alist)
)

(defun my-c-c++-hook-stuff ()
(c-set-style "Vicchi")
(turn-on-auto-fill)
(set-fill-column 79)
(c-toggle-auto-hungry-state 1))
(add-hook 'c-mode-common-hook 'my-c-c++-hook-stuff)
(add-hook 'comint-output-filter-functions
'comint-watch-for-password-prompt)

(setq vc-make-backup-files t)
(setq vc-keep-workfiles t)
(setq vc-mistrust-permissions t)

(require 'find-file)
(setq ff-always-try-to-create nil)
(setq cc-other-file-alist
'((".cxx$" (".hxx"))
(".hxx$" (".cxx"))
(".cpp$" (".hpp"))
(".hpp$" (".cpp"))))

(setq cc-search-directories
'("." "/usr/include" "/usr/include/sys/*" "$HOME/current/portable/include/*/*" "$HOME/current/portable-com/*/include/*"))

(global-set-key [f4] 'copy-region-as-kill)
(global-set-key [f5] 'compile)
(global-set-key [home] 'beginning-of-buffer)
(global-set-key [end] 'end-of-buffer)
(global-set-key [f2] 'dabbrev-expand)
(global-set-key [f3] 'dabbrev-completion)

(cond (window-system
(global-font-lock-mode 1)
(setq transient-mark-mode t)
(set-face-background 'region "yellow")
(set-face-foreground 'region "red")

(setq special-display-buffer-names
'("*Help*" "*shell*"))
(setq special-display-regexps '("*man .*" "*Man .*"))
))

(custom-set-variables
;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
;; Your init file should contain only one such instance.
'(Man-downcase-section-letters-flag nil)
'(c-tab-always-indent nil)
'(case-fold-search t)
'(tab-width 4)
'(current-language-environment "English")
'(global-font-lock-mode t nil (font-lock))
;; '(show-paren-mode t nil (paren))
'(transient-mark-mode t))
(custom-set-faces
;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
;; Your init file should contain only one such instance.
'(font-lock-comment-face ((((class color) (background dark)) (:foreground "yellow")))))

(put 'upcase-region 'disabled nil)

(put 'downcase-region 'disabled nil)
```


