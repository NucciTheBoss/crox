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

enum TokenType
  # Single-character tokens
  LEFT_PAREN
  RIGHT_PAREN
  LEFT_BRACE
  RIGHT_BRACE
  COMMA
  DOT
  MINUS
  PLUS
  SEMICOLON
  SLASH
  STAR

  # One or two character tokens
  BANG
  BANG_EQUAL
  EQUAL
  EQUAL_EQUAL
  GREATER
  GREATER_EQUAL
  LESS
  LESS_EQUAL

  # Literals
  IDENTIFIER
  STRING
  NUMBER

  # Keywords
  AND
  CLASS
  ELSE
  FALSE
  FUN
  FOR
  IF
  NIL
  OR
  PRINT
  RETURN
  SELF
  SUPER
  TRUE
  VAR
  WHILE

  # End-of-file
  EOF
end
