cask "undertone" do
  version "1.12.0"
  sha256 "fa3565f1bbedef5e54fbc94d428c67fff503dc7a031950a26bbba8a3a297ce4e"

  url "https://github.com/sslugic/undertone/releases/download/v#{version}/Undertone.dmg",
      verified: "github.com/sslugic/undertone/"
  name "Undertone"
  desc "Explains jargon during calls and reminds you of the facts when you're asked"
  homepage "https://getundertone.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Undertone.app"

  zap trash: [
    "~/Library/Application Support/Undertone",
    "~/Library/Caches/co.slaven.meetinghints",
    "~/Library/HTTPStorages/co.slaven.meetinghints",
    "~/Library/Preferences/co.slaven.meetinghints.plist",
  ]
end
