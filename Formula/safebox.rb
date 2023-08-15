# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Safebox < Formula
  desc "A Fast and Flexible secret manager built with love by adikari in Go."
  homepage ""
  version "1.3.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/monebag/safebox/releases/download/v1.3.11/safebox_1.3.11_darwin_amd64.tar.gz"
      sha256 "091941994c392c4b3543a503b2210bea1b2e51bc086442f4105c1568e32375d0"

      def install
        bin.install "safebox"
        bash_completion.install "completions/safebox.bash" => "safebox"
        zsh_completion.install "completions/safebox.zsh" => "_safebox"
        fish_completion.install "completions/safebox.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/monebag/safebox/releases/download/v1.3.11/safebox_1.3.11_darwin_arm64.tar.gz"
      sha256 "ea681ee93d0353fa01c65f3d905da4d5dc4d44b0430c5834b4919ac601c275d4"

      def install
        bin.install "safebox"
        bash_completion.install "completions/safebox.bash" => "safebox"
        zsh_completion.install "completions/safebox.zsh" => "_safebox"
        fish_completion.install "completions/safebox.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/monebag/safebox/releases/download/v1.3.11/safebox_1.3.11_linux_amd64.tar.gz"
      sha256 "d9ee42cb90aa31feba2d2086077932e98d518c30409aaa160955a923134fe089"

      def install
        bin.install "safebox"
        bash_completion.install "completions/safebox.bash" => "safebox"
        zsh_completion.install "completions/safebox.zsh" => "_safebox"
        fish_completion.install "completions/safebox.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/monebag/safebox/releases/download/v1.3.11/safebox_1.3.11_linux_arm64.tar.gz"
      sha256 "9f2b36984ea3aa1dc60546f55685896b379af2087f63e5a01d6b705d6c7633e0"

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
