class SpmKit < Formula
    desc "Simple command line tool for managing Swift Package Manager projects"
    homepage "https://github.com/JozefLipovsky/spm-kit"
    version "0.1.2"
    license "MIT"

    if Hardware::CPU.arm?
        url "https://github.com/JozefLipovsky/spm-kit/releases/download/v#{version}/spm-kit-v#{version}-macos-arm64.tar.gz"
        sha256 "bb16d697f9e4646ca9f93cf63231e2078e662ae8360fb5eaeecde6ccfbf2fa1d"
    else
        url "https://github.com/JozefLipovsky/spm-kit/releases/download/v#{version}/spm-kit-v#{version}-macos-x86_64.tar.gz"
        sha256 "6b55e6625413b178e69308d8887aca8de30d06a8697159c28bd33c3918b2178a"
    end

    def install
        bin.install "spm-kit"
        libexec.install "SPMKit_Core.bundle"
        bin.install_symlink libexec/"SPMKit_Core.bundle"
    end

    test do
        system "#{bin}/spm-kit", "--version"
    end
end
