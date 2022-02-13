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
class AstraCli < Formula

  desc "Command line automation for DataStax Astra"
  homepage "https://github.com/rsds143/astra-cli"
  url "https://github.com/rsds143/astra-cli/archive/refs/tags/v0.5.5.tar.gz"
  sha256 "8769fbbb61a05f9b405566e189c70109686d82370fb6bdeff390e7dbb737d9be"
  license "Apache-2.0"
  depends_on "go@1.17"
  def install
    system "./script/build"
    bin.install "./bin/astra" => "astra"
  end
  test do
    status_output = shell_output("#{bin}/astra-cli -h", 1)
    assert_match "usage: astra-cli", status_output[0..11]
  end
end
