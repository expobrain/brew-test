class Mew < Formula
    desc "It does this and that"
    homepage "https://github.com/expobrain/brew-test"
    # See https://www.rubydoc.info/github/Homebrew/brew/GitHubPrivateRepositoryReleaseDownloadStrategy
    # url "https://github.com/expobrain/brew-test/releases/download/v0.0.1/mew-0.0.1.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    url "https://storage.cloud.google.com/data-infra-mew/mew-0.0.1.tar.gz"
    sha256 "e0d8ce5cd7358fb1548123222cf2a3b09e8244ff1fb2680abedf4bdaaf105113"

    def install
      bin.install "mew"
    end

    test do
      assert_match "mew version 0.0.1", shell_output("#{bin}/mew", 2)
    end
  end
