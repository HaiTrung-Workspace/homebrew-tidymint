cask "tidymint" do
  version "1.0.0"
  sha256 "bdb905c0e96d703447f0bb2ace4dfe0a7854cc6e2b38f1a9e6072384f525fafd"

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
end
