#  Copyright 2021 Ryan Svihla
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
class Cqlbin < Formula

  desc "Single CQL binary for Apache Cassandra ™"
  homepage "https://github.com/rsds143/cqlbin"
  url "https://github.com/rsds143/cqlbin/archive/v0.1.2.tar.gz"
  sha256 "f1186acdbedae5006bc3d4d32343dadd35256b4fade9ffeebd68c5e6ad9e8488"
  license "Apache-2.0"
  depends_on "go@1.16"
  def install
    system "./script/build"
    bin.install "./bin/cqlbin" => "cqlbin"
  end
  test do
    status_output = shell_output("#{bin}/cqlbin -h", 1)
    assert_match "usage: cqlbin", status_output[0..11]
  end
end
