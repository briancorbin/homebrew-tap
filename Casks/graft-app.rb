cask "graft-app" do
  version "0.5.1"
  sha256 "d9ed93538c561ae3b3fba352ccd5dc7386bc4b9e0e8d6deee9c8a16cb9e412f5"

  url "https://github.com/briancorbin/graft/releases/download/v#{version}/Graft-#{version}.zip"
  name "Graft"
  desc "Desktop app for Graft ephemeral GitHub Actions runners + Tart dev/CI images"
  homepage "https://github.com/briancorbin/graft"

  depends_on macos: ">= :sonoma"
  # The menu-bar app drives the graft CLI — install it too.
  depends_on formula: "briancorbin/tap/graft"

  app "Graft.app"

  zap trash: "~/.graft"
end
