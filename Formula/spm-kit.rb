class SpmKit < Formula
    desc "Simple command line tool for managing Swift Package Manager projects"
    homepage "https://github.com/JozefLipovsky/spm-kit"
    version "0.1.0"
    license "MIT"

    if Hardware::CPU.arm?
        url "https://github.com/JozefLipovsky/spm-kit/releases/download/v#{version}/spm-kit-v#{version}-macos-arm64.tar.gz"
        sha256 "7effdc9f8f3f7ccc7710da1425cedddf169d42216b2705ec1a52c16f5fc5fb34"
    else
        url "https://github.com/JozefLipovsky/spm-kit/releases/download/v#{version}/spm-kit-v#{version}-macos-x86_64.tar.gz"
        sha256 "14d9f2b7587a1dc5b547cb7970bcb0dbc9211c68e4a43beb836b1aba1c78975a"
    end

    def install
        bin.install "spm-kit"
    end

    test do
        system "#{bin}/spm-kit", "--version"
    end
end
