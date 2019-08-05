;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-
(in-package :asdf-user)

(eval-when (:compile-toplevel :load-toplevel :execute)
  #+linux
  (sb-posix:setenv "LD_LIBRARY_PATH" "./" 1)
  #+win32
  (sb-posix:setenv "PATH" "./" 1))

(defsystem cl-sample-game
  :name "cl-sample-game"
  :version "0.1"
  :author "Ark"
  :pathname "src/"
  :serial T
  :components ((:file "packages")
               (:file "cl-sample-game"))
  :depends-on (:sdl2/examples))
