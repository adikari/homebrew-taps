# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Safebox < Formula
  desc "A Fast and Flexible secret manager built with love by adikari in Go."
  homepage ""
  version "1.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/monebag/safebox/releases/download/v1.3.5/safebox_1.3.5_darwin_amd64"
      sha256 "885aedb79d28bad509f760c99e50ef7d238844381e405e744875f78978efaec6"

      def install
        bin.install "safebox"
        bash_completion.install "completions/safebox.bash" => "safebox"
        zsh_completion.install "completions/safebox.zsh" => "_safebox"
        fish_completion.install "completions/safebox.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/monebag/safebox/releases/download/v1.3.5/safebox_1.3.5_darwin_arm64"
      sha256 "3f00ccc6ad40d7cd1f79e3f3333ecd51da806a1f3bbf3a9868cdcc37a68f0fbf"

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
      url "https://github.com/monebag/safebox/releases/download/v1.3.5/safebox_1.3.5_linux_arm64"
      sha256 "bde8fce5ebec1741b930e47775ac18e43d65671283f5300afb1d2f2b505b01e4"

      def install
        bin.install "safebox"
        bash_completion.install "completions/safebox.bash" => "safebox"
        zsh_completion.install "completions/safebox.zsh" => "_safebox"
        fish_completion.install "completions/safebox.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/monebag/safebox/releases/download/v1.3.5/safebox_1.3.5_linux_amd64"
      sha256 "e01819d98a909be1d9c9e740dfaade95b4b78774e4058c4a5901f31cf1dc94d7"

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
