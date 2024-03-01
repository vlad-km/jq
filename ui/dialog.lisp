;;; -*- mode:lisp;  coding:utf-8 -*-
#|

            /\___/\
            )     (
           =\     /=                  if this code is not work, i dont know who wrote this code
             )   (                    Copyright © 2017,2018,2022  @vlad-km
            /     \                   2017, Original https://github.com/vlad-km/moren-electron
            )     (                   2022, Code redesign
           /       \                  Electron >= electron@21.2.2
           \       /                  JSCL >= version 0.8.2  
      jgs   \__ __/
               ))
              //
             ((
              \)
|#

;;;  Dialog Widget

;;; .(dialog jq object)                   - setter
;;; .(dialog jq "option" "stack")         - getter
;;; .(dialog jq "option" "stack" ".prod") - setter
;;; .(dialog jq "destroy")                - method call
;;; See full documentation by https://api.jqueryui.com/dialog/
;;;
(export '([w].dialog))
(defun [w].dialog (jq &rest midagi)

)




;;; EOF
