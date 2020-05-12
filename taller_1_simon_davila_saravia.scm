(define es_conmutativa?
  (lambda(f x y)
    (if( = (f x y) (f y x) )
    #t
    #f
    )
  )
)

(define son_conmutativas?
  (lambda (m x y)
    (if(null? m)
      (list)
        (if( = ((car m) x y) ((car m) y x))
        (cons #t (son_conmutativas? (cdr m) x y))
        (cons #f (son_conmutativas? (cdr m) x y))
        )
    )
  )
)

(define contar_conmutativas
  (lambda (m x y)
    (if(null? m)
    0
      (if ( =((car m) x y)((car m) y x))
        (+ 1 (contar_conmutativas(cdr m) x y))
        (+ 0 (contar_conmutativas(cdr m) x y))
      )
    )
  )
)