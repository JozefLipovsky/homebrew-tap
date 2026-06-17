class SpmKit < Formula
    desc "Simple command line tool for managing Swift Package Manager projects"
    homepage "https://github.com/JozefLipovsky/spm-kit"
    version "0.3.0"
    license "MIT"

    if Hardware::CPU.arm?
        url "https://github.com/JozefLipovsky/spm-kit/releases/download/v#{version}/spm-kit-v#{version}-macos-arm64.tar.gz"
        sha256 "baa8c608cfcbf46c9e9d5f7735a6d2b64aed095df3a627b2bc7ea382ae78f6bd"
    else
        url "https://github.com/JozefLipovsky/spm-kit/releases/download/v#{version}/spm-kit-v#{version}-macos-x86_64.tar.gz"
        sha256 "69756907e45c2731f9370f6acfde01767f6cabbc99123fdfa1228f3c84a3be1f"
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
