(set-default-font "Bitstream Vera Sans Mono-11")
(set-face-font 'variable-pitch "Bitstream Vera Sans Mono-11")
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  '("ヒラギノ角ゴ Pro W3" . "unicode-bmp")
                  )

(add-to-list 'default-frame-alist '(alpha . (0.85 0.85)))
