examples - org contents
normal
	^ '#+TITLE: Example file
#+OPTIONS: num:nil ^:nil
#+STARTUP: hideblocks

This is an example file for use by the Org-mode tests.

* top
** code block
   :PROPERTIES: 
   :tangle:   yes
   :CUSTOM_ID: code-block-section
   :END:      
   Here are a couple of code blocks.
   
   #+begin_src emacs-lisp :tangle no
  ;; 94839181-184f-4ff4-a72f-94214df6f5ba
  (message "I am code")
   #+end_src
* accumulating properties in drawers
  :PROPERTIES: 
  :var+:     bar=2
  :var:      foo=1
  :ID:       75282ba2-f77a-4309-a970-e87c149fe125
  :END:      
  
  #+begin_src emacs-lisp :results silent
 (list bar foo)
  #+end_src
'