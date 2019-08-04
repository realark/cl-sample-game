(in-package :cl-user)

(defpackage :ark.sample-game
  (:use :cl))

(in-package :ark.sample-game)

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

(defun build-binary ()
  (sb-ext:save-lisp-and-die
   (or
    #+win32"sample-game-windows.exe"
    #+linux"sample-game-linux"
    #+darwin"sample-game-osx"
    (error "Unsupported OS for building. Got: ~A" *features*))
   :purify T
   :toplevel
   #'main
   :executable t
   ;; :application-type :gui
   :save-runtime-options t))
