;; Sets up exec-path-from shell
;; https://github.com/purcell/exec-path-from-shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(exec-path-from-shell-copy-envs
 '("PATH"
   "BOOT_CLOJURE_VERSION"
   "AUTH0_ISSUER"
   "AUTH0_CLIENT_ID"
   "AUTH0_CLIENT_SECRET"))

(defun eshell-clear-buffer ()
  "Clear terminal"
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer)))

(add-hook 'shell-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-l") 'eshell-clear-buffer)))
