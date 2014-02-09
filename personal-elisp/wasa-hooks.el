(defun wasa-turn-on-fill-mode ()
  (auto-fill-mode 1))
(defun wasa-turn-on-indicate-empty-lines ()
  (setq indicate-empty-lines t))
(defun wasa-turn-on-indicate-buffer-boundaries ()
  (setq indicate-buffer-boundaries
        '((top . left) (bottom . left))))
(defun wasa-show-trailing-whitespace ()
  (setq show-trailing-whitespace t))

(add-hook 'text-mode-hook 'wasa-turn-on-indicate-buffer-boundaries)
(add-hook 'text-mode-hook 'wasa-turn-on-indicate-empty-lines)
(add-hook 'text-mode-hook 'wasa-turn-on-fill-mode)
(add-hook 'text-mode-hook 'column-enforce-mode)
(add-hook 'text-mode-hook 'wasa-show-trailing-whitespace)
(add-hook 'prog-mode-hook 'wasa-turn-on-indicate-buffer-boundaries)
(add-hook 'prog-mode-hook 'wasa-turn-on-indicate-empty-lines)
(add-hook 'prog-mode-hook 'column-enforce-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode-enable)
(autoload 'company-mode-on "company" "Enable company")
(add-hook 'prog-mode-hook 'company-mode-on)
(add-hook 'prog-mode-hook 'wasa-show-trailing-whitespace)

(provide 'wasa-hooks)
