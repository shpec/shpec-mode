(require 'f)

(defvar shpec-mode-support-path
  (f-dirname load-file-name))

(defvar shpec-mode-features-path
  (f-parent shpec-mode-support-path))

(defvar shpec-mode-root-path
  (f-parent shpec-mode-features-path))

(add-to-list 'load-path shpec-mode-root-path)

(require 'shpec-mode)
(require 'espuds)
(require 'ert)

(Setup
 ;; Before anything has run
 )

(Before
 ;; Before each scenario is run
 )

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )
