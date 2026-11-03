# Homebrew tap for Tidymint

[Tidymint](https://tidymint.app) is a free, open-source (MIT) Mac cleaner. Everything goes to the Trash first, with Undo.

```sh
brew install --cask HaiTrung-Workspace/tidymint/tidymint
```

The cask downloads `Tidymint.zip` straight from the [GitHub releases](https://github.com/HaiTrung-Workspace/tidymint/releases) and checks it against the SHA-256 published there.

Tidymint is not yet notarized by Apple, so macOS blocks the first launch. Open **System Settings > Privacy & Security** and click **Open Anyway** ([guide with screenshots](https://tidymint.app/install/)).

Update: `brew upgrade --cask tidymint`. Remove: `brew uninstall --cask tidymint` (add `--zap` to also remove settings).
