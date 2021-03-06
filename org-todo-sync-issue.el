;;; org-todo-sync-issue.el --- Sync org-todo and github issue  -*- lexical-binding: t -*-
;; Author: grugrut <grugruglut+github@gmail.com>
;; URL:
;; Version: 1.00

;; This program is free software: you can redistribute it and/or modify
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

(require 'org)

(defun otsi--sync-to-github ()
  "."
  (let ((properties (org-entry-properties)))
    ;; ひとつずつgithubに対して同期をとる
    (princ (assoc "ITEM" properties))
    )
  )

(defun otsi-sync-to-github ()
  "."
  (interactive)
  ;; バッファのTODO一覧を取得する
  (org-map-entries (otsi--sync-to-github) "TODO=\"TODO\"")
  )

(provide 'org-todo-sync-issue)

;;; org-todo-sync-issue.el ends here
