class LeafKitTour < Formula
  desc "Interactive CLI installer for leaf-kit Markdown toolkit"
  homepage "https://github.com/leaf-kit/leaf-kit-tour"
  version "0.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/leaf-kit/leaf-kit-tour/releases/download/v0.2.0/leaf-kit-tour-0.2.0-darwin-x86_64.tar.gz"
    sha256 "41371ccfff7726bfd1275e0c3faef53fe4fb07464df242a4c5153406376f06c3"
  end

  def install
    bin.install "leaf-kit-tour"
  end

  test do
    assert_match "leaf-kit-tour v#{version}", shell_output("#{bin}/leaf-kit-tour --version")
  end
end
