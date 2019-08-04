;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-
(in-package :asdf-user)

(defsystem cl-sample-game
  :name "cl-sample-game"
  :version "0.1"
  :author "Ark"
  :pathname "src/"
  :serial T
  :components ((:file "packages")
               (:file "cl-sample-game")))
