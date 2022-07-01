# Copyright 2022 Jason C. Nucciarone
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

VERSION = "0.1.0"

class Crox
  def Crox.main
    if ARGV.size > 1
      STDERR.puts("USAGE: crox [script]")

    elsif ARGV.size == 1
      puts(ARGV[0])

    else
      Crox.repl
    end
  end
  
  def Crox.repl
    puts("Crox #{VERSION} (dev, June 30 2022, 22:03:14) [Crystal 1.4.1] on Linux")
    while true
      print(">>> ")
      line = gets
      if line.nil?
        break
      end
      puts line
    end
  end
end

Crox.main
