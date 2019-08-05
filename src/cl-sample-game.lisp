(in-package :cl-sample-game)

(defun main ()
  (sdl2:make-this-thread-main
   (lambda ()
     (format t
             "Sample app running.~%Lisp info: ~A : ~A~%"
             (lisp-implementation-type)
             (lisp-implementation-version))
     (format T "SDL info: ~D.~D.~D~%"
             sdl2-ffi:+sdl-major-version+
             sdl2-ffi:+sdl-minor-version+
             sdl2-ffi:+sdl-patchlevel+)
     (format t
             "Platform: ~A~%"
             (cond #+darwin(t "OSX")
                   #+win32(t "Windows")
                   #+linux(t "Linux")))
     (sdl2-examples:basic-test))))
