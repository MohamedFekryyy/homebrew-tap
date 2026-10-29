cask "sound" do
  version "0.3.11"
  sha256 "2ad7ef60eb6c9d0fede14327b6c4676e83e94ffede9b922637f5e2d4acc7998d"

  # Served from this tap's GitHub Releases, not the website, so every install
  # and upgrade shows up in GitHub's per-release download count. Browser
  # downloads stay on cplofmngs.com. It is the same notarized DMG either way.
  url "https://github.com/MohamedFekryyy/homebrew-tap/releases/download/sound-#{version}/SOUND-#{version}.dmg"
  name "SOUND"
  name "SOUND by CPL OF MNGS"
  desc "Per-app 8-band equalizer that lives in the menu bar"
  homepage "https://www.cplofmngs.com/sound"

  livecheck do
    url "https://www.cplofmngs.com/downloads/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # Minimum, not exact: brew treats the bare symbol as "Tahoe or newer"
  # (a ceiling would use maximum_macos).
  depends_on macos: :tahoe

  app "SOUND.app"

  zap trash: [
    "~/Library/Application Support/EQ by CPL OF MANGS",
    "~/Library/Preferences/com.fekryaiad.EQByCPLOFMANGS.plist",
  ]
end
