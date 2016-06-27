;;; elixir-snippet-helpers.el --- Helper functions for my Elixir yasnippets

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

(defun elixir-yasnippets--string/ends-with (string suffix)
 "Return t if STRING ends with SUFFIX."
 (and (string-match (rx-to-string `(: ,suffix eos) t)
       string)
  t))

(defun elixir-yasnippets--is-test-file ()
  (and buffer-file-name (elixir-yasnippets--string/ends-with buffer-file-name "_test.exs")))

(defun elixir-yasnippets--maybe-phoenix-router-file ()
  (and buffer-file-name (elixir-yasnippets--string/ends-with buffer-file-name "web/router.ex")))

;; detect if a line starts with a given module attribute
(defun elixir-yasnippets--is-false-moduledoc-attribute ()
  (let (beginning end currentLine topic)
    (setq beginning (line-beginning-position))
    (setq end (line-end-position))
    (setq currentLine (buffer-substring-no-properties beginning end))
    (setq topic (split-string currentLine))
    (if (eq (length topic) 2)
        (if (string-match "@moduledoc" (pop topic))
            (if (string-match "false" (pop topic))
                t)))))

;; detect if a line starts with `@behaviour ...`
(defun elixir-yasnippets--is-behaviour-line-of (behaviour)
  (let (beginning end currentLine topic)
    (setq beginning (line-beginning-position))
    (setq end (line-end-position))
    (setq currentLine (buffer-substring-no-properties beginning end))
    (setq topic (split-string currentLine))
    (if (eq (length topic) 2)
        (if (string-match "@behaviour" (pop topic))
            (if (string-match behaviour (pop topic))
                t)))))

(defun elixir-yasnippets--is-use-line-of (module)
  (let (beginning end currentLine topic)
    (setq beginning (line-beginning-position))
    (setq end (line-end-position))
    (setq currentLine (buffer-substring-no-properties beginning end))
    (setq topic (split-string currentLine))
    (if (eq (length topic) 2)
        (if (string-match "use" (pop topic))
            (if (string-match module (pop topic))
                t)))))

(defun elixir-yasnippets--is-import-line-of (module)
  (let (beginning end currentLine topic)
    (setq beginning (line-beginning-position))
    (setq end (line-end-position))
    (setq currentLine (buffer-substring-no-properties beginning end))
    (setq topic (split-string currentLine))
    (if (eq (length topic) 2)
        (if (string-match "import" (pop topic))
            (if (string-match module (pop topic))
                t)))))

(defun elixir-yasnippets--is-defimpl-line-of (protocol)
  (let (beginning end currentLine topic)
    (setq beginning (line-beginning-position))
    (setq end (line-end-position))
    (setq currentLine (buffer-substring-no-properties beginning end))
    (setq topic (split-string currentLine))
    (if (eq (length topic) 2)
        (if (string-match "defimpl" (pop topic))
            (if (string-match protocol (pop topic))
                t)))))

(provide 'elixir-snippet-helpers)
;;; elixir-snippet-helpers.el ends here
