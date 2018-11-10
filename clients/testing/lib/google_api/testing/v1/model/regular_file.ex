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

defmodule GoogleApi.Testing.V1.Model.RegularFile do
  @moduledoc """
  A file or directory to install on the device before the test starts

  ## Attributes

  - content (FileReference): Required Defaults to: `null`.
  - devicePath (String.t): Where to put the content on the device. Must be an absolute, whitelisted path. If the file exists, it will be replaced. The following device-side directories and any of their subdirectories are whitelisted: &lt;p&gt;${EXTERNAL_STORAGE}, or /sdcard&lt;/p&gt; &lt;p&gt;${ANDROID_DATA}/local/tmp, or /data/local/tmp&lt;/p&gt; &lt;p&gt;Specifying a path outside of these directory trees is invalid.  &lt;p&gt; The paths /sdcard and /data will be made available and treated as implicit path substitutions. E.g. if /sdcard on a particular device does not map to external storage, the system will replace it with the external storage path prefix for that device and copy the file there.  &lt;p&gt; It is strongly advised to use the &lt;a href&#x3D; \&quot;http://developer.android.com/reference/android/os/Environment.html\&quot;&gt; Environment API&lt;/a&gt; in app and test code to access files on the device in a portable way. Required Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => GoogleApi.Testing.V1.Model.FileReference.t(),
          :devicePath => any()
        }

  field(:content, as: GoogleApi.Testing.V1.Model.FileReference)
  field(:devicePath)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.RegularFile do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.RegularFile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.RegularFile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end