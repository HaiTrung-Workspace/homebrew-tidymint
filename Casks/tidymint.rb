cask "tidymint" do
  version "0.3.8"
  sha256 "e30c576247dd010c0dd865b220b8c8923d83da784cd4bde258a5860ec3733d42"

  url "https://github.com/HaiTrung-Workspace/tidymint/releases/download/v#{version}/Tidymint.zip"
  name "Tidymint"
  desc "Free, open-source disk cleaner that moves files to the Trash, with Undo"
  homepage "https://tidymint.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Tidymint.app"

  zap trash: [
    "~/Library/Application Support/Tidymint",
    "~/Library/Preferences/com.haitrung.diskcleanup.plist",
  ]

  caveats <<~EOS
    Tidymint is not yet notarized by Apple. On first launch macOS will block it:
    open System Settings > Privacy & Security and click "Open Anyway".
    Step-by-step guide: https://tidymint.app/install/
  EOS
end
