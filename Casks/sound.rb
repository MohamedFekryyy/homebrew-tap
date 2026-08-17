cask "sound" do
  version "0.3.4"
  sha256 "f4c94f78dfe2acafbca7e7b9f1ef15614f7c079168659b860380b5d1c90e833f"

  url "https://www.cplofmngs.com/downloads/SOUND-#{version}.dmg"
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
