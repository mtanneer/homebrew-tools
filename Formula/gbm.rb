class Gbm < Formula
  desc "Interactive htop-style git branch manager"
  homepage "https://github.com/mtanneer/tools.git.git-branch-manager"
  url "https://github.com/mtanneer/tools.git.git-branch-manager/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "45c4ba10046ca44b7d20eab7f795a1e7413ee6078f9e42b8a55f1a74da68859c"
  license "MIT"

  depends_on "git" => :recommended

  def install
    inreplace "gbm", 'GBM_VERSION=""', "GBM_VERSION=\"#{version}\""
    bin.install "gbm"
  end

  test do
    system "#{bin}/gbm", "--version"
  end
end
