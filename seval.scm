(define (load-s-eval)
  (xdef seval (lambda (sexpr)
                (let ((res (ac-niltree (eval (ac-denil sexpr)))))
                  (if (eqv? res #t)
                      't
                       res)))))
