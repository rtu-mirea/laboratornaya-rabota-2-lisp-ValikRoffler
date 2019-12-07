;; Вставка элемента в список по номеру

(setf a (list 3 9 2 5 8 1 4 7))

(defun insert(lst i elem)
    (if (= i 0)
        (setf lst (append (list elem) lst)))
    (if (> i 0)
        (push elem (cdr (nthcdr (- i 1) lst))))
    lst)

(print (insert a 0 3))

;; Удаление из списка по номеру

(defun delete_i(lst i)
    (append (subseq lst 0 i) (nthcdr (+ i 1) lst)))
  
(print (delete_i a 0))

;; Поиск элемента по значению

(defun find_v(elem lst)
  (cond ((atom lst) nil)
        ((eql (car lst) elem) lst)
        ((find elem (cdr lst)))))

(print (find_v 1 a))
(print (find_v 77 a))
