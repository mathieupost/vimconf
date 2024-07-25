;; extends

(
  (call_expression
   function: (selector_expression
               operand: (identifier) @name) (#eq? @name "queries")
   arguments: (argument_list
                (interpreted_string_literal) @injection.content
                (#offset! @injection.content 0 1 0 -1)
                (#set! injection.language "sql")))
)
(
  (call_expression
   function: (selector_expression
               operand: (identifier) @name) (#eq? @name "queries")
   arguments: (argument_list
                (raw_string_literal) @injection.content
                (#offset! @injection.content 0 1 0 -1)
                (#set! injection.language "sql")))
)
