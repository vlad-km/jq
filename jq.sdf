;;; -*- mode:lisp; coding:utf-8  -*-

;;;
;;; This file is part of the MOREN environment
;;; JQ - JSCL wrapper for JQuery library
;;; Copyright © 2017 Vladimir Mezentsev
;;;

;;;
;;; JQ package system definition file

(lores:defsys :jq
    :path  "git/jq"
    :components ((:file "jq-pkg")
                 (:module "base"
                          (:file "jq-base"))
                 (:module "dom"
                          (:file "jq-general-attributes"))
                 (:module "css"
                          (:file "jq-class-attribute")
                          (:file "jq-style-properties")
                          (:file "jq-dimensions")
                          (:file "jq-offset")
                          (:file "jq-effects"))
                 (:module "events"
                          (:file "jq-mouse-events")
                          ;;(:file "jq-form-event")
                          ;;(:file "jq-keyboard-event")
                          (:file "jq-event-handler"))
                 (:module "dom"
                          (:file "jq-dom-around")
                          (:file "jq-dom-inside")
                          (:file "jq-dom-outside")
                          (:file "jq-dom-removable")
                          (:file "jq-dom-replace"))
                 (:file "finality")) )


;;; EOF
