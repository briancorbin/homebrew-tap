cask "graft-app" do
  version "0.1.6"
  sha256 "12f339b9c9563a44df25eb1d743b6ab297c38db73f07acb938c04f03e29379a3"

  url "https://github.com/briancorbin/graft/releases/download/v#{version}/Graft-#{version}.zip"
  name "Graft"
  desc "Menu-bar companion for Graft ephemeral GitHub Actions runners"
  homepage "https://github.com/briancorbin/graft"

  depends_on macos: ">= :sonoma"
  # The menu-bar app drives the graft CLI — install it too.
  depends_on formula: "briancorbin/tap/graft"

  app "Graft.app"

  zap trash: "~/.graft"
end
