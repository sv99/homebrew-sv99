class Html2md < Formula
  desc "HTML to Markdown converter"
  homepage "https://github.com/suntong/html2md"
  version "1.5.0"
  url "https://github.com/suntong/html2md/releases/download/v#{version}/html2md_#{version}_darwin_amd64.tar.gz"
  sha256 "2251f7c6756fab4cc771e920265d29e211845114114905c72d1a20f6aae23608"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    bin.install "html2md"
  end

  test do
    system bin/"html2md", "--version"
  end
end
