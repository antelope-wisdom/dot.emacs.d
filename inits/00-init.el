;; 対応する括弧をハイライト
(show-paren-mode t)

;; スクロール時の移動量を1に
(setq scroll-step 1)

;; 編集時 buffer 再読み込み
(global-auto-revert-mode 1)

;; カーソルの位置が何文字目かを表示する
(column-number-mode t)

;; カーソルの位置が何行目かを表示する
(line-number-mode t)

;; カーソルの場所を保存する
(require 'saveplace)
(setq-default save-place t)

;; 補完時に大文字小文字を区別しない
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; シンボリックリンクを開くときの質問省略
(setq vc-follow-symlinks t)

;;; バックアップファイルを作らない
(setq backup-inhibited t)

;;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;; linum-mode をいじって Emacs を高速化
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))
