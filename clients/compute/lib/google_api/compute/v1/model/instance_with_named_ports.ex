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

defmodule GoogleApi.Compute.V1.Model.InstanceWithNamedPorts do
  @moduledoc """


  ## Attributes

  - instance (String.t): [Output Only] The URL of the instance. Defaults to: `null`.
  - namedPorts ([NamedPort]): [Output Only] The named ports that belong to this instance group. Defaults to: `null`.
  - status (String.t): [Output Only] The status of the instance. Defaults to: `null`.
    - Enum - one of [PROVISIONING, RUNNING, STAGING, STOPPED, STOPPING, SUSPENDED, SUSPENDING, TERMINATED]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instance => any(),
          :namedPorts => list(GoogleApi.Compute.V1.Model.NamedPort.t()),
          :status => any()
        }

  field(:instance)
  field(:namedPorts, as: GoogleApi.Compute.V1.Model.NamedPort, type: :list)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceWithNamedPorts do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceWithNamedPorts.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceWithNamedPorts do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
