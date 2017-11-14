;01q-03.rkt
;01a.txt的答案
#|【程序1】题目：
古典问题：有一对兔子，从出生后第3个月起每个月都生一对兔子，
小兔子长到第三个月后每个月又生一对兔子，假如兔子都不死，
问每个月的兔子总数为多少？|#

#lang racket
(require math)

;解法三：用类与对象求解
(define rabbit%
  (class object%
    (field (m 1)
           m-end)
    (define/public (birth m)
      (if (
           (send (new rabbit%) birth ~~~~