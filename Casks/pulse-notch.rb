cask "pulse-notch" do
  version "0.2.0"
  sha256 "681b5653056bb9f3e20a6a7f0e38f28f04f312a46cfd0a0ba4b6513ac89dd967"

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
