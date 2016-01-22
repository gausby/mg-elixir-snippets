;;; elixir-snippets-helpers.el --- Helper functions for my Elixir yasnippets

;; Copyright (C) 2016 Martin Gausby

;; Author: Martin Gausby <martin@gausby.dk>
;; Keywords: snippets

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Helper methods used in elixir-snippets

;;; Code:

;; detect if a line starts with `@behaviour ...`
(defun elixir-yasnippets--is-behaviour-line-of (behaviour)
  (let (beginning end currentLine topic)
    (setq beginning (line-beginning-position))
    (setq end (line-end-position))
    (setq currentLine (buffer-substring-no-properties beginning end))
    (setq topic (split-string currentLine))
    (if (eq (length topic) 2)
        (if (string-match "@behaviour" (car topic))
            (if (string-match behaviour (nth 1 topic))
                t)))))

(provide 'elixir-snippet-helpers)
;;; elixir-snippets-helpers.el ends here
