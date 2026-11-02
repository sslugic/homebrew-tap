cask "undertone" do
  version "1.34.1"
  sha256 "53b775e40f6defac1c3190afb704b77af8bab57bb93e73062eeea538983c0f95"

  url "https://github.com/sslugic/undertone/releases/download/v#{version}/Undertone.dmg"
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
