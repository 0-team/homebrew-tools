class KubePrompt < Formula
  desc "An interactive kubernetes client featuring auto-complete using go-prompt."
  homepage "https://gitlab.com/zero_team/kube-prompt"
  version "v1.1.0"

  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  if OS.mac?
    url "https://zeroteam-tools.s3.eu-west-1.amazonaws.com/kube-prompt/kube-prompt_v1.1.0_darwin_#{arch}.zip"
  elsif OS.linux?
    url "https://zeroteam-tools.s3.eu-west-1.amazonaws.com/kube-prompt/kube-prompt_v1.1.0_linux_#{arch}.zip"
  end

  def install
    bin.install "kube-prompt"
  end
end