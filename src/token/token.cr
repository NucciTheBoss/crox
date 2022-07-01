# -*- Mode:Crystal; indent-tabs-mode:nil; tab-width:2 -*-
#
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

require "./tokentype"

class Token
  def initialize(type : TokenType, lexeme : String, literal, line : Int32)
    @type = type
    @lexeme = lexeme
    @literal = literal
    @line = line
  end

  def to_string
    return "#{@type} #{@lexeme} #{@literal}"
  end
end
