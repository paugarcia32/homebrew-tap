cask "pulse-notch" do
  version "0.1.5"
  sha256 "310e1ffae334791502c80a5875da7e2891ce173667b39bfc5690b7b5857c3b9a"

  url "https://github.com/paugarcia32/pulse-notch/releases/download/v#{version}/PulseNotch-#{version}.dmg"
  name "Pulse Notch"
  desc "Ambient activity surface for the MacBook notch"
  homepage "https://github.com/paugarcia32/pulse-notch"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Pulse Notch.app"

  caveats <<~EOS
    Pulse Notch is ad-hoc signed and not notarized. On first launch, macOS may
    require allowing it from System Settings > Privacy & Security.
  EOS
end
