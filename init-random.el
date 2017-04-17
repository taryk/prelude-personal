(random t) ; seed it randomly

(defun insert-random-number (max-number)
  "Insert a random number between 0 to 999999."
  (interactive "Max: ")
  (insert (number-to-string (random max-number))))

(defun insert-random-hex ()
  "Insert a random 4-digit hexidecimal number."
  (interactive)
  (let (myCharset (possibleCharsCount 16))
    (setq myCharset "1234567890abcdef" )
    (dotimes (ii 4)
      (insert (elt myCharset (random possibleCharsCount))) ) )
  ;; (insert (format "%4x" (random 65535)) )
  )

(defun insert-random-string ()
  "Insert a random alphanumerics string of length 5.
The possible chars are 0 to 9, and a to z (lower case)."
  (interactive)
  (let (myCharset (possibleCharsCount 36))
    (setq myCharset "1234567890abcdefghijklmnopqrstuvwxyz" )
    (dotimes (ii 5)
      (insert (elt myCharset (random possibleCharsCount))) ) ) )
