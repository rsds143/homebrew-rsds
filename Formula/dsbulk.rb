class Sperf < Formula

  desc "DataStax Bulk Loader (DSBulk) is an open-source, Apache-licensed, unified tool for loading into and unloading from Apache Cassandra(R), DataStax Astra and DataStax Enterprise (DSE)"
  homepage "https://github.com/datastax/dsbulk"
  url "https://github.com/datastax/dsbulk/releases/download/1.8.0/dsbulk-1.8.0.tar.gz"
  sha256 "32cad3c94728289dae314d47dd484fa4f418bcaf8fcebe591bf9cfaa2fe56ed5"
  license "Apache-2.0"
  depends_on "openjdk@11"

  def install
  end

  test do
    #status_output = shell_output("#{bin}/sperf -h", 1)
    #assert_match "usage: sperf", status_output[0..11]
  end
end
