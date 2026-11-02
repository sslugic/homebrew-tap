cask "undertone" do
  version "1.34.0"
  sha256 "e79e24a6c0b505f2b2f67b7780d842dc5d357eb5c08c6ca093a64a0d58167012"

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
