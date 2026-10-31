cask "undertone" do
  version "1.33.3"
  sha256 "75546a90b5fa5c41aa58a229c5bfa503bae0f59024dc037650972f5f43b0a50c"

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
