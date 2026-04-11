class LeafKitTour < Formula
  desc "Interactive CLI installer for leaf-kit Markdown toolkit"
  homepage "https://github.com/leaf-kit/leaf-kit-tour"
  version "0.4.1"
  license "MIT"

  on_macos do
    url "https://github.com/leaf-kit/leaf-kit-tour/releases/download/v0.4.1/leaf-kit-tour-0.4.1-darwin-x86_64.tar.gz"
    sha256 "3936564499290e78b3b557c558de69c5d0ea8487afdd031a29aad647ffb2b64f"
  end

  def install
    bin.install "leaf-kit-tour"
  end

  test do
    assert_match "leaf-kit-tour v#{version}", shell_output("#{bin}/leaf-kit-tour --version")
  end
end
