class LeafKitTour < Formula
  desc "Interactive CLI installer for leaf-kit Markdown toolkit"
  homepage "https://github.com/leaf-kit/leaf-kit-tour"
  version "0.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/leaf-kit/leaf-kit-tour/releases/download/v0.3.0/leaf-kit-tour-0.3.0-darwin-x86_64.tar.gz"
    sha256 "b864178af6a14d1c86691663ab1623f6148c9343cf19950acd25698eec707686"
  end

  def install
    bin.install "leaf-kit-tour"
  end

  test do
    assert_match "leaf-kit-tour v#{version}", shell_output("#{bin}/leaf-kit-tour --version")
  end
end
