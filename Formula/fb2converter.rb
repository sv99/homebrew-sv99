class Fb2converter < Formula
  # insltall binary fb2c and kindlegen
  # for build from source need additional steps
  desc "Unified converter of FB2 files into epub2, kepub, mobi and azw3 formats"
  homepage "https://github.com/rupor-github/fb2converter"
  version "1.77.2"
  url "https://github.com/rupor-github/fb2converter/releases/download/v#{version}/fb2c-darwin-amd64.zip"
  license "GNU General Public License v3.0"
  sha256 "5ba16d5a211bc4bdaa952cfddbcb1d2fad7f450f6b89f5dc8ceea640b4faa381"
  head "https://github.com/rupor-github/fb2converter.git", branch: "master"

  def install
    bin.install "fb2c", "kindlegen"
  end

  test do
    system bin/"fb2c", "--version"
    system bin/"kindlegen"
  end
end
