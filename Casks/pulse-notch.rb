cask "pulse-notch" do
  version "0.2.3"
  sha256 "4a70f8734f855f65e6610bebd5825d30f0b0bb53e7c63d6802cfdaa5c5e91bc8"

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
