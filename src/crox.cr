# -*- Mode:Crystal; indent-tabs-mode:nil; tab-width:2 -*-
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
  @@had_error = false

  # Entry point for Crox scripting language.
  def Crox.main
    if ARGV.size > 1
      STDERR.puts("USAGE: crox [script]")

    elsif ARGV.size == 1
      Crox.run_src_file

    else
      Crox.repl
    end
  end

  # Run Crox source code file passed at invocation.
  #
  # ```
  # $ crox src.crx
  # ```
  def Crox.run_src_file
    src = File.read(ARGV[0])
    # TODO: Replace with run method after writing out the scanner
    puts(src)
    if @@had_error
      exit
  end
  
  # Launch Crox REPL in current shell session.
  #
  # ```
  # $ crox
  # ```
  def Crox.repl
    puts("Crox #{VERSION} (dev, June 30 2022, 22:03:14) [Crystal 1.4.1] on Linux")
    while true
      print(">>> ")
      line = gets
      if line.nil?
        break
      end
      # TODO: Replace with run after writing initial scanner
      puts(line)
      @@had_error = false
    end
  end

  # Execute Crox source code.
  def Crox.run(src : String)
    # TODO: Invoke lexeme scanner here to begin code execution.
  end

  # Error handler for Crox.
  def Crox.error(line : Int32, message : String)
    Crox.report(line, "", message)
  end

  # Helper method for reporting the location of the
  # error in the Crox source code file.
  def Crox.report(line : Int32, where : String, message : String)
    STDERR.puts("[line #{line}] Error #{where}: #{message}")
    @@had_error = true
  end
end

Crox.main
