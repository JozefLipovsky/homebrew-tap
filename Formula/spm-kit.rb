class SpmKit < Formula
    desc "Simple command line tool for managing Swift Package Manager projects"
    homepage "https://github.com/JozefLipovsky/spm-kit"
    version "0.2.0"
    license "MIT"

    if Hardware::CPU.arm?
        url "https://github.com/JozefLipovsky/spm-kit/releases/download/v#{version}/spm-kit-v#{version}-macos-arm64.tar.gz"
        sha256 "f7334b6304388a5d35e13b546d25fcead69395c9d044c9e8cf70c0f67aef63db"
    else
        url "https://github.com/JozefLipovsky/spm-kit/releases/download/v#{version}/spm-kit-v#{version}-macos-x86_64.tar.gz"
        sha256 "9eaacb1f335b4496c3bf6a1f941652652cdfd1a887c63f8d9a0c04b69d0ea59b"
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
