cask "undertone" do
  version "1.35.5"
  sha256 "44cace6b317d9f4885ec0d41fd23af7b3eb0ded3b4ac0d329cedfa7471c7d94a"

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
