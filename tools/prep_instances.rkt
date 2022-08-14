#lang racket

; small programm to reformat instances
; usage: racket prep_instances <instance> <new instance> <string to be added after init>
; e.g. racket prep_instances test.lp new_test.lp 1

; get input file
(define input-file
  (if (vector-empty? (current-command-line-arguments))
      "../examples/test.lp"
      (first (vector->list (current-command-line-arguments)))))

; get output file
(define output-file
  (if (< (vector-length (current-command-line-arguments)) 2)
      "../examples/new_test.lp"
      (second (vector->list (current-command-line-arguments)))))

; get string
(define input-string
  (if (< (vector-length (current-command-line-arguments)) 3)
      "1"
      (third (vector->list (current-command-line-arguments)))))

; replace string
(define (rep-input file)
  (regexp-replace* #px"init" (file->string file) (string-append "init" input-string)))

; file writing
(define (write-to-file path string)
  (display-to-file string path #:exists 'replace))

; execute
(if (write-to-file output-file (rep-input input-file))
    (displayln "Finished writing.")
    (displayln "Internal error."))
