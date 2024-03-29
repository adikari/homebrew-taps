# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Safebox < Formula
  desc "A Fast and Flexible secret manager built with love by adikari in Go."
  homepage ""
  version "1.3.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/monebag/safebox/releases/download/v1.3.12/safebox_1.3.12_darwin_amd64.tar.gz"
      sha256 "6c48b464b4f152488272bf4b73a4005345798ab20b47c9da7d1abe44910c1e0c"

      def install
        bin.install "safebox"
        bash_completion.install "completions/safebox.bash" => "safebox"
        zsh_completion.install "completions/safebox.zsh" => "_safebox"
        fish_completion.install "completions/safebox.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/monebag/safebox/releases/download/v1.3.12/safebox_1.3.12_darwin_arm64.tar.gz"
      sha256 "aaf9545e30d8833d0da94732e608b535e250c786f8460090acd466a99d0a1341"

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
      url "https://github.com/monebag/safebox/releases/download/v1.3.12/safebox_1.3.12_linux_amd64.tar.gz"
      sha256 "1fc339b23428334ea6364beb77b7755b74d8c8afaa4adb68079ceabcb63dbfee"

      def install
        bin.install "safebox"
        bash_completion.install "completions/safebox.bash" => "safebox"
        zsh_completion.install "completions/safebox.zsh" => "_safebox"
        fish_completion.install "completions/safebox.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/monebag/safebox/releases/download/v1.3.12/safebox_1.3.12_linux_arm64.tar.gz"
      sha256 "a546a594184784191b05636efa5240f017e9b673e521e6cf790e09944daa2bd3"

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
