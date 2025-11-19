;;; acid-theme.el --- Acid theme for Emacs -*- lexical-binding: t; -*-

;; Author: snowiow
;; Version: 1.0
;; Package-Requires: ((emacs "24"))

;;; Commentary:
;; A dark theme with vibrant colors, converted from the Helix acid theme by zyrafal

;;; Code:

(deftheme acid
  "Acid - A dark theme with vibrant colors.")

(let ((class '((class color) (min-colors 89)))
      ;; Palette
      (background "#161e26")
      (highlight "#1e262e")
      (accent "#8080c0")
      (gray "#303840")
      (light-gray "#606870")
      (white "#e0e0e0")
      (red "#ff7070")
      (orange "#ffa060")
      (yellow "#ffd080")
      (green "#b0ff80")
      (cyan "#80d0ff")
      (magenta "#f0b0ff")
      (purple "#b090ff")
      (unknown "#ff00ff"))

  (custom-theme-set-faces
   'acid

   ;; Basic faces
   `(default ((,class (:foreground ,white :background ,background))))
   `(cursor ((,class (:background ,cyan))))
   `(region ((,class (:background ,gray))))
   `(highlight ((,class (:background ,highlight))))
   `(hl-line ((,class (:background ,highlight))))
   `(fringe ((,class (:background ,background :foreground ,light-gray))))
   `(show-paren-match ((,class (:background ,gray :foreground ,orange :weight bold))))
   `(show-paren-mismatch ((,class (:background ,red :foreground ,background :weight bold))))
   `(isearch ((,class (:background ,orange :foreground ,background :weight bold))))
   `(lazy-highlight ((,class (:background ,gray :foreground ,white))))
   `(trailing-whitespace ((,class (:background ,red))))
   `(link ((,class (:foreground ,cyan :underline t))))
   `(link-visited ((,class (:foreground ,magenta :underline t))))

   ;; Font-lock faces
   `(font-lock-builtin-face ((,class (:foreground ,purple))))
   `(font-lock-comment-face ((,class (:foreground ,light-gray :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,light-gray :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,magenta))))
   `(font-lock-doc-face ((,class (:foreground ,yellow :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,yellow))))
   `(font-lock-keyword-face ((,class (:foreground ,red))))
   `(font-lock-preprocessor-face ((,class (:foreground ,orange))))
   `(font-lock-string-face ((,class (:foreground ,green))))
   `(font-lock-type-face ((,class (:foreground ,cyan))))
   `(font-lock-variable-name-face ((,class (:foreground ,cyan))))
   `(font-lock-warning-face ((,class (:foreground ,yellow :weight bold))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,yellow))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,yellow))))

   ;; Mode line
   `(mode-line ((,class (:foreground ,white :background ,highlight :box (:line-width 1 :color ,gray)))))
   `(mode-line-inactive ((,class (:foreground ,light-gray :background ,background :box (:line-width 1 :color ,gray)))))
   `(mode-line-buffer-id ((,class (:foreground ,cyan :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,yellow :weight bold))))

   ;; Line numbers
   `(line-number ((,class (:foreground ,gray :background ,background))))
   `(line-number-current-line ((,class (:foreground ,light-gray :background ,highlight :weight bold))))

   ;; Minibuffer
   `(minibuffer-prompt ((,class (:foreground ,cyan :weight bold))))

   ;; Vertical border
   `(vertical-border ((,class (:foreground ,gray))))

   ;; Search
   `(match ((,class (:background ,gray :foreground ,yellow :weight bold))))

   ;; Company (completion)
   `(company-tooltip ((,class (:background ,highlight :foreground ,white))))
   `(company-tooltip-selection ((,class (:background ,light-gray :foreground ,background))))
   `(company-tooltip-common ((,class (:foreground ,cyan :weight bold))))
   `(company-tooltip-common-selection ((,class (:foreground ,cyan :weight bold))))
   `(company-tooltip-annotation ((,class (:foreground ,yellow))))
   `(company-scrollbar-bg ((,class (:background ,gray))))
   `(company-scrollbar-fg ((,class (:background ,light-gray))))

   ;; Corfu (completion)
   `(corfu-default ((,class (:background ,highlight :foreground ,white))))
   `(corfu-current ((,class (:background ,light-gray :foreground ,background))))
   `(corfu-bar ((,class (:background ,light-gray))))
   `(corfu-border ((,class (:background ,gray))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,cyan :weight bold))))
   `(dired-symlink ((,class (:foreground ,magenta))))
   `(dired-marked ((,class (:foreground ,yellow :weight bold))))
   `(dired-flagged ((,class (:foreground ,red :weight bold))))

   ;; Magit
   `(magit-section-heading ((,class (:foreground ,yellow :weight bold))))
   `(magit-section-highlight ((,class (:background ,highlight))))
   `(magit-diff-added ((,class (:foreground ,green :background ,background))))
   `(magit-diff-added-highlight ((,class (:foreground ,green :background ,highlight))))
   `(magit-diff-removed ((,class (:foreground ,red :background ,background))))
   `(magit-diff-removed-highlight ((,class (:foreground ,red :background ,highlight))))
   `(magit-diff-context ((,class (:foreground ,light-gray :background ,background))))
   `(magit-diff-context-highlight ((,class (:foreground ,white :background ,highlight))))
   `(magit-diff-hunk-heading ((,class (:foreground ,white :background ,gray))))
   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,white :background ,light-gray))))
   `(magit-branch-local ((,class (:foreground ,cyan))))
   `(magit-branch-remote ((,class (:foreground ,green))))
   `(magit-branch-current ((,class (:foreground ,cyan :weight bold :box 1))))
   `(magit-hash ((,class (:foreground ,light-gray))))
   `(magit-tag ((,class (:foreground ,yellow))))

   ;; Org mode
   `(org-level-1 ((,class (:foreground ,green :weight bold :height 1.3))))
   `(org-level-2 ((,class (:foreground ,cyan :weight bold :height 1.2))))
   `(org-level-3 ((,class (:foreground ,yellow :weight bold :height 1.1))))
   `(org-level-4 ((,class (:foreground ,magenta :weight bold))))
   `(org-level-5 ((,class (:foreground ,purple :weight bold))))
   `(org-level-6 ((,class (:foreground ,orange :weight bold))))
   `(org-level-7 ((,class (:foreground ,red :weight bold))))
   `(org-level-8 ((,class (:foreground ,cyan :weight bold))))
   `(org-document-title ((,class (:foreground ,green :weight bold :height 1.5))))
   `(org-document-info ((,class (:foreground ,cyan))))
   `(org-document-info-keyword ((,class (:foreground ,light-gray))))
   `(org-link ((,class (:foreground ,cyan :underline t))))
   `(org-todo ((,class (:foreground ,red :weight bold))))
   `(org-done ((,class (:foreground ,green :weight bold))))
   `(org-date ((,class (:foreground ,purple))))
   `(org-table ((,class (:foreground ,cyan))))
   `(org-code ((,class (:foreground ,magenta :background ,highlight))))
   `(org-verbatim ((,class (:foreground ,orange))))
   `(org-block ((,class (:background ,highlight :extend t))))
   `(org-block-begin-line ((,class (:foreground ,light-gray :background ,gray :extend t))))
   `(org-block-end-line ((,class (:foreground ,light-gray :background ,gray :extend t))))
   `(org-special-keyword ((,class (:foreground ,light-gray))))
   `(org-meta-line ((,class (:foreground ,light-gray))))
   `(org-checkbox ((,class (:foreground ,yellow :weight bold))))

   ;; Markdown
   `(markdown-header-face-1 ((,class (:foreground ,green :weight bold :height 1.3))))
   `(markdown-header-face-2 ((,class (:foreground ,cyan :weight bold :height 1.2))))
   `(markdown-header-face-3 ((,class (:foreground ,yellow :weight bold :height 1.1))))
   `(markdown-header-face-4 ((,class (:foreground ,magenta :weight bold))))
   `(markdown-header-face-5 ((,class (:foreground ,purple :weight bold))))
   `(markdown-header-face-6 ((,class (:foreground ,orange :weight bold))))
   `(markdown-bold-face ((,class (:foreground ,yellow :weight bold))))
   `(markdown-italic-face ((,class (:foreground ,yellow :slant italic))))
   `(markdown-link-face ((,class (:foreground ,cyan))))
   `(markdown-url-face ((,class (:foreground ,cyan :underline t))))
   `(markdown-code-face ((,class (:foreground ,magenta :background ,highlight))))
   `(markdown-inline-code-face ((,class (:foreground ,magenta))))
   `(markdown-list-face ((,class (:foreground ,red))))

   ;; YAML - yaml-mode uses font-lock faces, but these are yaml-mode specific
   `(yaml-tab-face ((,class (:background ,red :foreground ,white))))
   `(yaml-leading-whitespace-face ((,class (:background ,background))))

   ;; Tree-sitter YAML (if using yaml-ts-mode)
   `(yaml-ts-tag-face ((,class (:foreground ,purple))))
   `(yaml-ts-anchor-face ((,class (:foreground ,yellow :weight bold))))
   `(yaml-ts-alias-face ((,class (:foreground ,yellow))))
   `(yaml-ts-block-mapping-key-face ((,class (:foreground ,cyan :weight bold))))
   `(yaml-ts-constant-builtin-face ((,class (:foreground ,magenta))))

   ;; Flycheck
   `(flycheck-error ((,class (:underline (:style wave :color ,red)))))
   `(flycheck-warning ((,class (:underline (:style wave :color ,yellow)))))
   `(flycheck-info ((,class (:underline (:style wave :color ,cyan)))))

   ;; Flymake
   `(flymake-error ((,class (:underline (:style wave :color ,red)))))
   `(flymake-warning ((,class (:underline (:style wave :color ,yellow)))))
   `(flymake-note ((,class (:underline (:style wave :color ,cyan)))))

   ;; LSP/Eglot
   `(eglot-highlight-symbol-face ((,class (:background ,gray :weight bold))))

   ;; Which-key
   `(which-key-key-face ((,class (:foreground ,cyan :weight bold))))
   `(which-key-separator-face ((,class (:foreground ,light-gray))))
   `(which-key-command-description-face ((,class (:foreground ,white))))
   `(which-key-group-description-face ((,class (:foreground ,yellow))))

   ;; Rainbow delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,cyan))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,yellow))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,green))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,magenta))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,purple))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,orange))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,red))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,cyan))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,yellow))))

   ;; Diff mode
   `(diff-added ((,class (:foreground ,green :background ,background))))
   `(diff-removed ((,class (:foreground ,red :background ,background))))
   `(diff-changed ((,class (:foreground ,yellow :background ,background))))
   `(diff-header ((,class (:foreground ,cyan :background ,highlight))))
   `(diff-file-header ((,class (:foreground ,yellow :weight bold))))
   `(diff-hunk-header ((,class (:foreground ,magenta :background ,highlight))))

   ;; Ediff
   `(ediff-current-diff-A ((,class (:background ,red :foreground ,background))))
   `(ediff-current-diff-B ((,class (:background ,green :foreground ,background))))
   `(ediff-current-diff-C ((,class (:background ,yellow :foreground ,background))))
   `(ediff-fine-diff-A ((,class (:background ,red :foreground ,white :weight bold))))
   `(ediff-fine-diff-B ((,class (:background ,green :foreground ,background :weight bold))))
   `(ediff-fine-diff-C ((,class (:background ,yellow :foreground ,background :weight bold))))

   ;; Eshell
   `(eshell-prompt ((,class (:foreground ,cyan :weight bold))))
   `(eshell-ls-directory ((,class (:foreground ,cyan :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,magenta))))
   `(eshell-ls-executable ((,class (:foreground ,green :weight bold))))

   ;; Term
   `(term-color-black ((,class (:foreground ,background :background ,gray))))
   `(term-color-red ((,class (:foreground ,red :background ,red))))
   `(term-color-green ((,class (:foreground ,green :background ,green))))
   `(term-color-yellow ((,class (:foreground ,yellow :background ,yellow))))
   `(term-color-blue ((,class (:foreground ,cyan :background ,cyan))))
   `(term-color-magenta ((,class (:foreground ,magenta :background ,magenta))))
   `(term-color-cyan ((,class (:foreground ,cyan :background ,cyan))))
   `(term-color-white ((,class (:foreground ,white :background ,light-gray))))

   ;; Meow
   `(meow-normal-cursor ((,class (:background ,cyan))))
   `(meow-insert-cursor ((,class (:background ,yellow))))
   `(meow-keypad-cursor ((,class (:background ,magenta))))
   `(meow-beacon-cursor ((,class (:background ,red))))
   `(meow-motion-cursor ((,class (:background ,purple))))
   `(meow-position-highlight-number ((,class (:foreground ,background :background ,orange :weight bold))))
   `(meow-position-highlight-number-1 ((,class (:foreground ,background :background ,yellow :weight bold))))
   `(meow-position-highlight-number-2 ((,class (:foreground ,background :background ,cyan :weight bold))))
   `(meow-position-highlight-number-3 ((,class (:foreground ,background :background ,magenta :weight bold))))
   `(meow-search-highlight ((,class (:background ,gray :foreground ,yellow :weight bold))))
   `(meow-search-indicator ((,class (:background ,orange :foreground ,background :weight bold))))

   ;; Dashboard
   `(dashboard-heading ((,class (:foreground ,cyan :weight bold))))
   `(dashboard-text-banner ((,class (:foreground ,yellow))))

   ;; IComplete/Icomplete-vertical
   `(icomplete-first-match ((,class (:foreground ,cyan :weight bold))))

   ;; Orderless
   `(orderless-match-face-0 ((,class (:foreground ,cyan :weight bold))))
   `(orderless-match-face-1 ((,class (:foreground ,yellow :weight bold))))
   `(orderless-match-face-2 ((,class (:foreground ,green :weight bold))))
   `(orderless-match-face-3 ((,class (:foreground ,magenta :weight bold))))

   ;; Marginalia
   `(marginalia-key ((,class (:foreground ,cyan))))
   `(marginalia-documentation ((,class (:foreground ,light-gray :slant italic))))
   `(marginalia-file-name ((,class (:foreground ,white))))

   ;; Consult
   `(consult-line-number ((,class (:foreground ,light-gray))))
   `(consult-preview-line ((,class (:background ,highlight))))

   ;; Tab bar
   `(tab-bar ((,class (:background ,background :foreground ,white))))
   `(tab-bar-tab ((,class (:background ,gray :foreground ,white :weight bold))))
   `(tab-bar-tab-inactive ((,class (:background ,background :foreground ,light-gray))))

   ;; Helpful
   `(helpful-heading ((,class (:foreground ,cyan :weight bold :height 1.2))))

   ;; Error/Warning/Success
   `(error ((,class (:foreground ,red :weight bold))))
   `(warning ((,class (:foreground ,yellow :weight bold))))
   `(success ((,class (:foreground ,green :weight bold))))

   ;; Custom
   `(custom-button ((,class (:background ,gray :foreground ,white :box (:line-width 1 :color ,light-gray)))))
   `(custom-button-pressed ((,class (:background ,light-gray :foreground ,background))))
   `(custom-variable-tag ((,class (:foreground ,cyan :weight bold))))
   `(custom-group-tag ((,class (:foreground ,yellow :weight bold :height 1.2))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'acid)

;;; acid-theme.el ends here
