(in-package :cl-sample-game)

(defun main ()
  (format t
          "Sample app running.~%Lisp implementation: ~A : ~A~%"
          (lisp-implementation-type)
          (lisp-implementation-version))
  (format t
          "Platform: ~A~%"
          (cond #+darwin(t "OSX")
                #+win32(t "Windows")
                #+linux(t "Linux"))))
