# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Safebox < Formula
  desc "A Fast and Flexible secret manager built with love by adikari in Go."
  homepage ""
  version "1.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adikari/safebox/releases/download/v1.1.7/safebox_1.1.7_darwin_arm64.tar.gz"
      sha256 "30003250e643d94e601c34fc104e1b1a4baec3a08828ccee608f8ea8457729aa"

      def install
        bin.install "safebox"
        bash_completion.install "completions/safebox.bash" => "safebox"
        zsh_completion.install "completions/safebox.zsh" => "_safebox"
        fish_completion.install "completions/safebox.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adikari/safebox/releases/download/v1.1.7/safebox_1.1.7_darwin_amd64.tar.gz"
      sha256 "75304c342783abb249a4458368636d37406b9344127bbd9100025a78a54fd72c"

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
      url "https://github.com/adikari/safebox/releases/download/v1.1.7/safebox_1.1.7_linux_arm64.tar.gz"
      sha256 "c25f8483b36f038cd9273be18c4c1cf98084c3a654fae9a00e8f21ce3bc2ab0b"

      def install
        bin.install "safebox"
        bash_completion.install "completions/safebox.bash" => "safebox"
        zsh_completion.install "completions/safebox.zsh" => "_safebox"
        fish_completion.install "completions/safebox.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adikari/safebox/releases/download/v1.1.7/safebox_1.1.7_linux_amd64.tar.gz"
      sha256 "88acf40439ce58edf07ffca3b777f6604d22168ec55c94ccc9710e225044f5a1"

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
