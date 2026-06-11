class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/briancorbin/graft"
  url "https://github.com/briancorbin/graft/releases/download/v0.1.3/graft-0.1.3-arm64-macos.tar.gz"
  sha256 "6f5931df069bbf8af6a4e15a9d6a557d19a31d2208a41ce1a4f7ab9e22c35775"
  version "0.1.3"
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
    assert_match "0.1.3", shell_output("#{bin}/graft --version")
  end
end
