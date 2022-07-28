class KubePrompt < Formula
  desc "An interactive kubernetes client featuring auto-complete using go-prompt."
  homepage "https://github.com/c-bata/kube-prompt"
  version "1.0.11"

  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  if OS.mac?
    url "https://zeroteam-tools.s3.eu-west-1.amazonaws.com/kube-prompt/kube-prompt_v1.0.11_darwin_#{arch}.zip"
  elsif OS.linux?
    url "https://zeroteam-tools.s3.eu-west-1.amazonaws.com/kube-prompt/kube-prompt_v1.0.11_linux_#{arch}.zip"
  end

  def install
    bin.install "kube-prompt"
  end
end