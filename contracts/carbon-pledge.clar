(define-data-var pledges (list 100 
  (tuple 
    (user principal)
    (message (string-utf8 100))
    (carbon-kg uint)
    (proof (string-utf8 256))
  )) (list))

(define-data-var total-carbon uint u0)

(define-public (add-pledge 
  (message (string-utf8 100)) 
  (carbon-kg uint) 
  (proof (string-utf8 256)))
  (begin
    (asserts! (<= carbon-kg u1000000) (err u100))

    (let ((pledge (tuple 
      (user tx-sender)
      (message message)
      (carbon-kg carbon-kg)
      (proof proof))))
      
      ;; Get current list
      (let ((pledge-list (var-get pledges)))
        (asserts! (< (len pledge-list) u100) (err u101))

        ;; Prepend safely using a literal list constructor
        (var-set pledges (list pledge) ;; fresh list
        )
      )

      ;; Increment total
      (var-set total-carbon (+ (var-get total-carbon) carbon-kg))

      (ok pledge)
    )
  )
)

(define-read-only (get-all-pledges)
  (ok (var-get pledges))
)

(define-read-only (total-carbon-offset)
  (ok (var-get total-carbon))
)
