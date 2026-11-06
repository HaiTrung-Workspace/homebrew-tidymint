cask "tidymint" do
  version "0.5.0"
  sha256 "ae9f12026b3c3a81e5796847d39bee495290ba70bc832de93ed1761921d55b4d"

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
    "~/Library/Caches/com.haitrung.diskcleanup",
    "~/Library/HTTPStorages/com.haitrung.diskcleanup",
    "~/Library/Preferences/com.haitrung.diskcleanup.plist",
  ]

  caveats <<~EOS
    Tidymint is not yet notarized by Apple. On first launch macOS will block it:
    open System Settings > Privacy & Security and click "Open Anyway".
    Step-by-step guide: https://tidymint.app/install/
  EOS
end
