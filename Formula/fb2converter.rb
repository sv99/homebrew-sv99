class Fb2converter < Formula
  # insltall binary fb2c and kindlegen
  # for build from source need additional steps
  desc "Unified converter of FB2 files into epub2, kepub, mobi and azw3 formats"
  homepage "https://github.com/rupor-github/fb2converter"
  version "1.70.0"
  url "https://github.com/rupor-github/fb2converter/releases/download/v1.70.0/fb2c_darwin_amd64.zip"
  license "GNU General Public License v3.0"
  sha256 "d021f2304f3405a661117df70b88b73620ad3b4d127ecd010eedf4b188cf9549"
  head "https://github.com/rupor-github/fb2converter.git", branch: "master"

  def install
    bin.install "fb2c", "kindlegen"
  end

  test do
    system bin/"fb2c", "--version"
    system bin/"kindlegen"
  end
end
