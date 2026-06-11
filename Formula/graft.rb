class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/briancorbin/graft"
  url "https://github.com/briancorbin/graft/releases/download/v0.1.6/graft-0.1.6-arm64-macos.tar.gz"
  sha256 "f1df819556916eeddfe68faf8a1a891e6e203e65ff43bcc5fa5edb7dc7823d70"
  version "0.1.6"
  license "MIT"

  # Apple Silicon only — Tart requires it, and so does the 2-macOS-VM model.
  depends_on arch: :arm64
  depends_on :macos
  # Graft drives the `tart` CLI; pull it in automatically.
  depends_on "cirruslabs/cli/tart"

  def install
    bin.install "graft"
  end

  test do
    assert_match "0.1.6", shell_output("#{bin}/graft --version")
  end
end
