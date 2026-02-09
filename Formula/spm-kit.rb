class SpmKit < Formula
    desc "Simple command line tool for managing Swift Package Manager projects"
    homepage "https://github.com/JozefLipovsky/SPMKit"
    version "0.0.0"
    license "MIT"


    if Hardware::CPU.arm?
        url "https://github.com/JozefLipovsky/SPMKit/releases/download/v#{version}/spm-kit-v#{version}-macos-arm64.tar.gz"
        sha256 ""
    else
        url "https://github.com/JozefLipovsky/SPMKit/releases/download/v#{version}/spm-kit-v#{version}-macos-x86_64.tar.gz"
        sha256 ""
    end

    def install
        bin.install "spm-kit"
    end


    test do
        system "#{bin}/spm-kit", "--version"
    end
end
