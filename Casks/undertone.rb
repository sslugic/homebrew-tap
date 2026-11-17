cask "undertone" do
  version "1.39.6"
  sha256 "507a3e2e1acb687d8d0b88eb34a33309b0026b6111fee886e7754863d85d8502"

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
