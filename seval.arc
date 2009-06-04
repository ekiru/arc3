; Provides a more convenient syntax for evaluating scheme expressions.
(def sapply (x . xs)
  (if xs
      (seval (cons x xs))
      (sapply x)))

(mac $ xs
  `(apply sapply ',@xs))
