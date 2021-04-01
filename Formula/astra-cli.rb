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
  url "https://github.com/rsds143/astra-cli/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "39a2bef4371c00d20b912e8e6eb12c7187cc67617fe6bf0f051f97350fbd51a7"
  license "Apache-2.0"
  depends_on "go@1.16"
  def install
    system "./script/build"
    bin.install "./bin/astra-cli" => "astra-cli"
  end
  test do
    status_output = shell_output("#{bin}/astra-cli -h", 1)
    assert_match "usage: astra-cli", status_output[0..11]
  end
end
