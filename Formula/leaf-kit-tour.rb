class LeafKitTour < Formula
  desc "Interactive CLI installer for leaf-kit Markdown toolkit"
  homepage "https://github.com/leaf-kit/leaf-kit-tour"
  url "https://github.com/leaf-kit/leaf-kit-tour/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "01b2ebbcb6f801c6355bf2f1eb810e79696caf76861125ecbafd1df5f4e936c8"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "leaf-kit-tour v#{version}", shell_output("#{bin}/leaf-kit-tour --version")
  end
end
