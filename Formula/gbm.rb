class Gbm < Formula
  desc "Interactive htop-style git branch manager"
  homepage "https://github.com/mtanneer/tools.git.git-branch-manager"
  url "https://github.com/mtanneer/tools.git.git-branch-manager/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on "git" => :recommended

  def install
    inreplace "gbm", "GBM_VERSION_PLACEHOLDER", version
    bin.install "gbm"
  end

  test do
    system "#{bin}/gbm", "--version"
  end
end
