# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Poly.V1.Model.ObjParseError do
  @moduledoc """
  Details of an error resulting from parsing an OBJ file

  ## Attributes

  - code (String.t): The type of problem found (required). Defaults to: `null`.
    - Enum - one of [CODE_UNSPECIFIED, INCONSISTENT_VERTEX_REFS, INVALID_COMMAND, INVALID_NUMBER, INVALID_VERTEX_REF, MISSING_GEOMETRIC_VERTEX, MISSING_TOKEN, TOO_FEW_DIMENSIONS, TOO_FEW_VERTICES, TOO_MANY_DIMENSIONS, UNSUPPORTED_COMMAND, UNUSED_TOKENS, VERTEX_NOT_FOUND, NUMBER_OUT_OF_RANGE, INVALID_VALUE, INVALID_TEXTURE_OPTION, TOO_MANY_PROBLEMS, MISSING_FILE_NAME, FILE_NOT_FOUND, UNKNOWN_MATERIAL, NO_MATERIAL_DEFINED, INVALID_SMOOTHING_GROUP, MISSING_VERTEX_COLORS, FILE_SUBSTITUTION, LINE_TOO_LONG, INVALID_FILE_PATH]
  - endIndex (integer()): The ending character index at which the problem was found. Defaults to: `null`.
  - filePath (String.t): The file path in which the problem was found. Defaults to: `null`.
  - line (String.t): The text of the line. Note that this may be truncated if the line was very long. This may not include the error if it occurs after line truncation. Defaults to: `null`.
  - lineNumber (integer()): Line number at which the problem was found. Defaults to: `null`.
  - startIndex (integer()): The starting character index at which the problem was found. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => any(),
          :endIndex => any(),
          :filePath => any(),
          :line => any(),
          :lineNumber => any(),
          :startIndex => any()
        }

  field(:code)
  field(:endIndex)
  field(:filePath)
  field(:line)
  field(:lineNumber)
  field(:startIndex)
end

defimpl Poison.Decoder, for: GoogleApi.Poly.V1.Model.ObjParseError do
  def decode(value, options) do
    GoogleApi.Poly.V1.Model.ObjParseError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Poly.V1.Model.ObjParseError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end