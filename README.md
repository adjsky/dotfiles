# dotfiles

## Setup

### chezmoi

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply adjsky
```

### Firefox (cascade)

1. Type about:config into your URL bar. Click on the **I accept the risk** button if you're shown a warning.
2. Seach for `toolkit.legacyUserProfileCustomizations.stylesheets` and set it to `true`.
3. Go to your profile folder:
    * Linux: `$HOME/.mozilla/firefox/######.default-release/`
    * MacOS: `Users/[USERNAME]/Library/Application Support/Firefox/Profiles/######.default-release`
4. Copy the `chrome` folder from `custom-firefox` into your profile and restart Firefox.

