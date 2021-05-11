class Nosqlbench < Formula

  desc "The open source, pluggable, nosql benchmarking suite."
  homepage "https://github.com/nosqlbench/nosqlbench"
  url "https://github.com/nosqlbench/nosqlbench/releases/download/nosqlbench-4.15.45/nb.jar"
  sha256 "32cad3c94728289dae314d47dd484fa4f418bcaf8fcebe591bf9cfaa2fe56ed5"
  license "Apache-2.0"
  depends_on :java

  def install
  end

  test do
    #status_output = shell_output("#{bin}/sperf -h", 1)
    #assert_match "usage: sperf", status_output[0..11]
  end
end
