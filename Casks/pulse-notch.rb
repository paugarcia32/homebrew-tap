cask "pulse-notch" do
  version "0.1.2"
  sha256 "074fe6a742e6df73a8f6ea0577477f2f9d2de6e229ca5f15ced4c1dae4ae7420"

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
