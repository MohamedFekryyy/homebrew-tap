# CPL OF MNGS Homebrew Tap

Homebrew casks for [CPL OF MNGS](https://www.cplofmngs.com) apps.

## SOUND

Free per-app 8-band equalizer for macOS, right in the menu bar. Built on
modern Core Audio process taps — no virtual audio drivers, no kernel
extensions. [Learn more](https://www.cplofmngs.com/sound).

```sh
brew trust --tap mohamedfekryyy/tap
brew tap mohamedfekryyy/tap
brew install --cask mohamedfekryyy/tap/sound
```

Homebrew 7 and later only load casks from taps you have chosen to trust, so
the first line is needed once per Mac. On older Homebrew, where `brew trust`
does not exist, skip it.

Requires macOS 26 (Tahoe) or later.

To update later:

```sh
brew upgrade --cask sound
```

If Homebrew ever refuses to load SOUND because the tap isn't trusted, run
`brew trust --tap mohamedfekryyy/tap` once.
