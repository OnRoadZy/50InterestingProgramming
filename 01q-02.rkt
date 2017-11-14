;01q-02.rkt
;01a.txt的答案
#|【程序1】题目：
古典问题：有一对兔子，从出生后第3个月起每个月都生一对兔子，
小兔子长到第三个月后每个月又生一对兔子，假如兔子都不死，
问每个月的兔子总数为多少？|#

#lang racket
(require math)

;用尾递归函数求解
(define (rabbits-t m-c m-t num)
  (cond
    ;第1个月,有2只兔子（自生）
    ((= 1 m-c) (rabbits-r (+ 1 m-c) m-t (+ num 2)))
    ;逢3月,倍增兔子
    ((divides? 3 m-c)
     (rabbits-r (+ 1 m-c) m-t (* 2 num)))
    ;到最后月数，返回兔子数
    ((>= m-c m-t) num)
    ;其它月份，月份递增，数量不递增
    (else (rabbits-r (+ 1 m-c) m-t num))))
