cask "pulse-notch" do
  version "0.2.2"
  sha256 "22d4fcb50a1b21a2a99ecd3539f0f7d0c1bd2f4eec6c4fda809dcd5ead80a4d7"

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
