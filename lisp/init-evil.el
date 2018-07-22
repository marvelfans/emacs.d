;;; package --- Summary"
;;; Commentary: emacs下使用vim快捷键


;; --*- lexical-binding: t -*-
;; evil: emacs下使用vim快捷键

;;; Code:

(use-package evil

  :config
  ;; emacs默认的快捷键会覆盖evil的
  ;; 为了使用evil的,首先将emacs的设置为nil
  (setq evil-motion-state-modes (append evil-emacs-state-modes evil-motion-state-modes))
  (setq evil-emacs-state-modes nil)


  ;; 键的转化
  (define-key evil-normal-state-map "c" nil)
  (define-key evil-motion-state-map "cu" 'universal-argument)

  :hook (after-init . evil-mode))




(provide 'init-evil)
;;; init-evil.el ends here
