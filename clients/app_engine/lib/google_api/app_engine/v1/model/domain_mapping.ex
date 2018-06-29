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

defmodule GoogleApi.AppEngine.V1.Model.DomainMapping do
  @moduledoc """
  A domain serving an App Engine application.

  ## Attributes

  - id (String.t): Relative name of the domain serving the application. Example: example.com. Defaults to: `null`.
  - name (String.t): Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.@OutputOnly Defaults to: `null`.
  - resourceRecords ([ResourceRecord]): The resource records required to configure this domain mapping. These records must be added to the domain&#39;s DNS configuration in order to serve the application via this domain mapping.@OutputOnly Defaults to: `null`.
  - sslSettings (SslSettings): SSL configuration for this domain. If unconfigured, this domain will not serve with SSL. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => any(),
          :name => any(),
          :resourceRecords => list(GoogleApi.AppEngine.V1.Model.ResourceRecord.t()),
          :sslSettings => GoogleApi.AppEngine.V1.Model.SslSettings.t()
        }

  field(:id)
  field(:name)
  field(:resourceRecords, as: GoogleApi.AppEngine.V1.Model.ResourceRecord, type: :list)
  field(:sslSettings, as: GoogleApi.AppEngine.V1.Model.SslSettings)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.DomainMapping do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.DomainMapping.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.DomainMapping do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
