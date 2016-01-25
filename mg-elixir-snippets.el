;;; elixir-snippets.el --- A collection of Elixir snippets for YASnippets

;; Copyright (C) 2016 Martin Gausby

;; Author: Martin Gausby <martin@gausby.dk>
;; Keywords: snippets
;; Package-Requires: ((yasnippet "0.8.0"))

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

;;; Code:

(require 'yasnippet)

(require 'elixir-snippet-helpers)

(defvar elixir-snippets-dir (file-name-directory (or load-file-name (buffer-file-name))))

;;;###autoload
(defun elixir-snippets-initialize ()
  (let ((snip-dir (expand-file-name "snippets" elixir-snippets-dir)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snip-dir t))
    (yas-load-directory snip-dir)))

;;;###autoload
(eval-after-load "yasnippet"
   '(elixir-snippets-initialize))

(provide 'mg-elixir-snippets)

;;; elixir-snippets.el ends here
