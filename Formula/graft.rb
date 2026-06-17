class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/briancorbin/graft"
  url "https://github.com/briancorbin/graft/releases/download/v0.5.1/graft-0.5.1-arm64-macos.tar.gz"
  sha256 "05dba43fadd56b84fa7ad4de57329da9f9f31d16070c26bb8e4227fc0f89c060"
  version "0.5.1"
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
    assert_match "0.5.1", shell_output("#{bin}/graft --version")
  end
end
