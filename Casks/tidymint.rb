cask "tidymint" do
  version "0.4.0"
  sha256 "1f274be4e8c64baa234acc68dd6ac01b1936884a4c5a4d675627284c22b31f90"

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
