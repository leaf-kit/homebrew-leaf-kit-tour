class LeafKitTour < Formula
  desc "Interactive CLI installer for leaf-kit Markdown toolkit"
  homepage "https://github.com/leaf-kit/leaf-kit-tour"
  version "0.4.0"
  license "MIT"

  on_macos do
    url "https://github.com/leaf-kit/leaf-kit-tour/releases/download/v0.4.0/leaf-kit-tour-0.4.0-darwin-x86_64.tar.gz"
    sha256 "fd24f317014bf05ad843ca803d153d7417b78e8f20ebee7afbce6c2d609b7a35"
  end

  def install
    bin.install "leaf-kit-tour"
  end

  test do
    assert_match "leaf-kit-tour v#{version}", shell_output("#{bin}/leaf-kit-tour --version")
  end
end
