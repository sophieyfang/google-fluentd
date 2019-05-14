#
# Copyright:: Copyright (c) 2012 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name "bundler"
version "1.6.6"

#dependency "rubygems" unless platform == 'windows'

build do
  # Use 'command' instead of 'gem' to keep  previous td-agent directory structure
  command "sudo #{install_dir}/ruby/bin/gem install bundler --no-document -v '#{version}'"
end
