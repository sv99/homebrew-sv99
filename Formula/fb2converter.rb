class Fb2converter < Formula
  # insltall binary fb2c and kindlegen
  # for build from source need additional steps
  desc "Unified converter of FB2 files into epub2, kepub, mobi and azw3 formats"
  homepage "https://github.com/rupor-github/fb2converter"
  version "1.77.2"
  url "https://github.com/rupor-github/fb2converter/releases/download/v#{version}/fb2c-darwin-amd64.zip"
  license "GNU General Public License v3.0"
  sha256 "f27f957f52bb6e9453ee4f3c5ef0052e1cb7b9c8f12ca0723f9df90cafce49fe"
  head "https://github.com/rupor-github/fb2converter.git", branch: "master"

  def install
    bin.install "fb2c", "kindlegen"
  end

  test do
    system bin/"fb2c", "--version"
    system bin/"kindlegen"
  end
end
