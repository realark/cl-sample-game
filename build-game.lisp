(ql:quickload :cl-sample-game)

(in-package :cl-sample-game)

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
 :save-runtime-options t)
