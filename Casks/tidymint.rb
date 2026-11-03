cask "tidymint" do
  version "0.3.7"
  sha256 "9594ed59660ef8fa52a8478686e8be5db9b9447c0516d60480743219574505c1"

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
