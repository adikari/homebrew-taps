# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Safebox < Formula
  desc "A Fast and Flexible secret manager built with love by adikari in Go."
  homepage ""
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/adikari/safebox/releases/download/v1.0.1/safebox_1.0.1_darwin_amd64.tar.gz"
      sha256 "171f7aa6c576d2fe88e6078bd6e0b213d219cad2d7ad7d2ccf23242977c7a899"

      def install
        bin.install "safebox"
        bash_completion.install "completions/safebox.bash" => "safebox"
        zsh_completion.install "completions/safebox.zsh" => "_safebox"
        fish_completion.install "completions/safebox.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/adikari/safebox/releases/download/v1.0.1/safebox_1.0.1_darwin_arm64.tar.gz"
      sha256 "42b6e089580a7eeae937ddb2e4637c6fdb79bdd4f3e12dc8dbe04fa49831f614"

      def install
        bin.install "safebox"
        bash_completion.install "completions/safebox.bash" => "safebox"
        zsh_completion.install "completions/safebox.zsh" => "_safebox"
        fish_completion.install "completions/safebox.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/adikari/safebox/releases/download/v1.0.1/safebox_1.0.1_linux_arm64.tar.gz"
      sha256 "b0b6976bd660720efea2c371eae000975bb6c24dee6fa5a7db6c632c5c77f132"

      def install
        bin.install "safebox"
        bash_completion.install "completions/safebox.bash" => "safebox"
        zsh_completion.install "completions/safebox.zsh" => "_safebox"
        fish_completion.install "completions/safebox.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adikari/safebox/releases/download/v1.0.1/safebox_1.0.1_linux_amd64.tar.gz"
      sha256 "d3e13971facacaac834e305f8484b2412b3de9619a16208f6fe7ec95a7891f10"

      def install
        bin.install "safebox"
        bash_completion.install "completions/safebox.bash" => "safebox"
        zsh_completion.install "completions/safebox.zsh" => "_safebox"
        fish_completion.install "completions/safebox.fish"
      end
    end
  end

  test do
    system "#{bin}/safebox --version"
  end
end
