(load "cl-sample-game.lisp")

(in-package :ark.sample-game)

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

(build-binary)
