class SpmKit < Formula
    desc "Simple command line tool for managing Swift Package Manager projects"
    homepage "https://github.com/JozefLipovsky/spm-kit"
    version "0.1.1"
    license "MIT"

    if Hardware::CPU.arm?
        url "https://github.com/JozefLipovsky/spm-kit/releases/download/v#{version}/spm-kit-v#{version}-macos-arm64.tar.gz"
        sha256 "98b95ec110aad7f126c20d90f26c401571decd979535580cfb31044c995c5e81"
    else
        url "https://github.com/JozefLipovsky/spm-kit/releases/download/v#{version}/spm-kit-v#{version}-macos-x86_64.tar.gz"
        sha256 "ab77dab9368328bba48f83d2a104a1a3ade2c770c257f13d9a0a497ec55ca504"
    end

    def install
        libexec.install "spm-kit"
        libexec.install "SPMKit_Core.bundle"
        bin.install_symlink "spm-kit"
    end

    test do
        system "#{bin}/spm-kit", "--version"
    end
end
