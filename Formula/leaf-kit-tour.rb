class LeafKitTour < Formula
  desc "Interactive CLI installer for leaf-kit Markdown toolkit"
  homepage "https://github.com/leaf-kit/leaf-kit-tour"
  url "https://github.com/leaf-kit/leaf-kit-tour/archive/refs/tags/v0.4.4.tar.gz"
  sha256 "abddb4df5bce7aa2792ae2b18047e33e5fce569037de1a837874a491fb8cdf22"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "leaf-kit-tour v#{version}", shell_output("#{bin}/leaf-kit-tour --version")
  end
end
