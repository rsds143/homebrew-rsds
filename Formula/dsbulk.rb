class Dsbulk < Formula

  desc "DataStax Bulk Loader (DSBulk) is an open-source, Apache-licensed, unified tool for loading into and unloading from Apache Cassandra(R), DataStax Astra and DataStax Enterprise (DSE)"
  homepage "https://github.com/datastax/dsbulk"
  url "https://github.com/datastax/dsbulk/releases/download/1.8.0/dsbulk-1.8.0.tar.gz"
  sha256 "50ce1f742bcd351d0de3a7e7b9297739944a87d9c2337adaff706c8c89a7bc2b"
  license "Apache-2.0"
  depends_on "openjdk@11"


  test do
    #status_output = shell_output("#{bin}/sperf -h", 1)
    #assert_match "usage: sperf", status_output[0..11]
  end
end
