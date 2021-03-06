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

defmodule GoogleApi.Testing.V1.Model.ObbFile do
  @moduledoc """
  An opaque binary blob file to install on the device before the test starts

  ## Attributes

  - obb (FileReference): Opaque Binary Blob (OBB) file(s) to install on the device Required Defaults to: `null`.
  - obbFileName (String.t): OBB file name which must conform to the format as specified by Android e.g. [main|patch].0300110.com.example.android.obb which will be installed into   &lt;shared-storage&gt;/Android/obb/&lt;package-name&gt;/ on the device Required Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :obb => GoogleApi.Testing.V1.Model.FileReference.t(),
          :obbFileName => any()
        }

  field(:obb, as: GoogleApi.Testing.V1.Model.FileReference)
  field(:obbFileName)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.ObbFile do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.ObbFile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.ObbFile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
