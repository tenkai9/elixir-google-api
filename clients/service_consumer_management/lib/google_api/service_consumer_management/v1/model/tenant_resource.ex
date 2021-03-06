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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.TenantResource do
  @moduledoc """
  Resource constituting the TenancyUnit.

  ## Attributes

  - resource (String.t): @OutputOnly Identifier of the tenant resource. For cloud projects, it is in the form &#39;projects/{number}&#39;. For example &#39;projects/123456&#39;. Defaults to: `null`.
  - status (String.t): Status of tenant resource. Defaults to: `null`.
    - Enum - one of [STATUS_UNSPECIFIED, PENDING_CREATE, ACTIVE, PENDING_DELETE, FAILED]
  - tag (String.t): Unique per single tenancy unit. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resource => any(),
          :status => any(),
          :tag => any()
        }

  field(:resource)
  field(:status)
  field(:tag)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.TenantResource do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.TenantResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.TenantResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
