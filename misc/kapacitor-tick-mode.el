(defvar kapacitor-tick-mode-hook nil)

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.tick\\'" . kapacitor-tick-mode))

(defvar funcs-type '("bool" "int" "float" "string" "duration"))
(defvar funcs-stateful '("sigma" "count"))
(defvar funcs-timedate '("time" "minute" "hour" "weekday" "day" "month" "year"))
(defvar funcs-math
  '(
    "abs"
    "acos"
    "acosh"
    "asin"
    "asinh"
    "atan"
    "atan2"
    "atanh"
    "cbrt"
    "ceil"
    "cos"
    "cosh"
    "erf"
    "erfc"
    "exp"
    "exp2"
    "expm1"
    "floor"
    "gamma"
    "hypot"
    "j0"
    "j1"
    "jn"
    "log"
    "log10"
    "log1p"
    "log2"
    "logb"
    "max"
    "min"
    "mod"
    "pow"
    "pow10"
    "sin"
    "sinh"
    "sqrt"
    "tan"
    "tanh"
    "trunc"
    "y0"
    "y1"
    "yn"
    ))
(defvar funcs-string
  '(
    "regexReplace"
    "strContains"
    "strContainsAny"
    "strCount"
    "strHasPrefix"
    "strHasSuffix"
    "strIndex"
    "strIndexAny"
    "strLastIndex"
    "strLastIndexAny"
    "strLength"
    "strReplace"
    "strSubstring"
    "strToLower"
    "strToUpper"
    "strTrim"
    "strTrimLeft"
    "strTrimPrefix"
    "strTrimRight"
    "strTrimSpace"
    "strTrimSuffix"
    ))
(defvar funcs-misc '("var" "if" "humanBytes"))

;;FIXME: const
(defvar tick-functions-re
  (regexp-opt
   (append funcs-type
           funcs-stateful
           funcs-timedate
           funcs-math
           funcs-string
           funcs-misc) t))
;;FIXME: const
(defvar tick-nodes-re
  (regexp-opt
   '(
     "alert"
     "batch"
     "combine"
     "default"
     "delete"
     "derivative"
     "eval"
     "flatten"
     "from"
     "groupBy"
     "httpOut"
     "httpPOST"
     "influxDBOut"
     "influxQL"
     "join"
     "k8sAutoscale"
     "kapacitorLoopback"
     "log"
     "mean"
     "noOp"
     "query"
     "sample"
     "shift"
     "stateCount"
     "stateDuration"
     "stats"
     "stream"
     "udf"
     "union"
     "where"
     "window"
     ) t))

(defvar tick-node-modifiers-re
  (regexp-opt
   '(
     "align"
     "as"
     "bottom"
     "count"
     "crit"
     "cron"
     "cumulativeSum"
     "database"
     "deadman"
     "difference"
     "distinct"
     "elapsed"
     "every"
     "fill"
     "first"
     "from"
     "groupBy"
     "groupByMeasurement"
     "holtWinters"
     "holtWintersWithFit"
     "id"
     "info"
     "keep"
     "last"
     "log"
     "max"
     "mean"
     "measurement"
     "median"
     "message"
     "mode"
     "movingAverage"
     "nonNegative"
     "offset"
     "percentile"
     "period"
     "retentionPolicy"
     "spread"
     "stddev"
     "sum"
     "top"
     "unit"
     "warn"
     ) t))

;;FIXME: consts
(defvar kapacitor-tick-font-lock-keywords
  (list
   `(,(concat "\|" tick-nodes-re "\\>") . font-lock-keyword-face)
   `(,(concat "\\." tick-node-modifiers-re "\\>") . font-lock-function-name-face)
      '("\\<lambda\\>" . font-lock-builtin-face)
   `(,(concat "\\<" tick-functions-re "\\>") . font-lock-builtin-face))
  "Highlighting for Kapacitor tick mode")

(defvar kapacitor-tick-mode-syntax-table
  (let ((st (make-syntax-table text-mode-syntax-table)))
    ;; underscore is part of a word
    (modify-syntax-entry ?_ "w" st)
    ;; Comments are two forward slashes to newline
    (modify-syntax-entry ?/ ". 12" st)
    (modify-syntax-entry ?\n ">" st)
    ;; Quoted strings
    (modify-syntax-entry ?\' "\"'"  st)
    (modify-syntax-entry ?\" "\"\"" st)
    ;; Punctuation
    (mapc #'(lambda (c) (modify-syntax-entry c "." st))
          (string-to-list "!#$%&*-+,.:;<=>?@\\|"))
    st))

(defun kapacitor-tick-mode ()
  "Major mode for editing Kapacitor TICK scripts"
  (interactive)
  (kill-all-local-variables)
  (set (make-local-variable 'font-lock-defaults) '(kapacitor-tick-font-lock-keywords))
  (set-syntax-table kapacitor-tick-mode-syntax-table)
  (setq mode-name "TICK")
  (run-hooks 'kapacitor-tick-mode-hook))

(provide 'kapacitor-tick-mode)
