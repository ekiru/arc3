; Mostly for use as a helper function for $.
(def sapply (x . xs)
  (if xs
      (seval (cons x xs))
      (sapply x)))

; A macro for scheme evaluation without the quote.
(mac $ xs
  `(apply sapply ',@xs))
