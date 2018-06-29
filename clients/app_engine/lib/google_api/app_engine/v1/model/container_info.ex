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

defmodule GoogleApi.AppEngine.V1.Model.ContainerInfo do
  @moduledoc """
  Docker image that is used to create a container and start a VM instance for the version that you deploy. Only applicable for instances running in the App Engine flexible environment.

  ## Attributes

  - image (String.t): URI to the hosted container image in Google Container Registry. The URI must be fully qualified and include a tag or digest. Examples: \&quot;gcr.io/my-project/image:tag\&quot; or \&quot;gcr.io/my-project/image@digest\&quot; Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :image => any()
        }

  field(:image)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.ContainerInfo do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.ContainerInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.ContainerInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
