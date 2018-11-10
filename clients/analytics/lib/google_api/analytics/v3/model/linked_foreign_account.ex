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

defmodule GoogleApi.Analytics.V3.Model.LinkedForeignAccount do
  @moduledoc """
  JSON template for an Analytics Remarketing Audience Foreign Link.

  ## Attributes

  - accountId (String.t): Account ID to which this linked foreign account belongs. Defaults to: `null`.
  - eligibleForSearch (boolean()): Boolean indicating whether this is eligible for search. Defaults to: `null`.
  - id (String.t): Entity ad account link ID. Defaults to: `null`.
  - internalWebPropertyId (String.t): Internal ID for the web property to which this linked foreign account belongs. Defaults to: `null`.
  - kind (String.t): Resource type for linked foreign account. Defaults to: `null`.
  - linkedAccountId (String.t): The foreign account ID. For example the an AdWords &#x60;linkedAccountId&#x60; has the following format XXX-XXX-XXXX. Defaults to: `null`.
  - remarketingAudienceId (String.t): Remarketing audience ID to which this linked foreign account belongs. Defaults to: `null`.
  - status (String.t): The status of this foreign account link. Defaults to: `null`.
  - type (String.t): The type of the foreign account. For example, &#x60;ADWORDS_LINKS&#x60;, &#x60;DBM_LINKS&#x60;, &#x60;MCC_LINKS&#x60; or &#x60;OPTIMIZE&#x60;. Defaults to: `null`.
  - webPropertyId (String.t): Web property ID of the form UA-XXXXX-YY to which this linked foreign account belongs. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :eligibleForSearch => any(),
          :id => any(),
          :internalWebPropertyId => any(),
          :kind => any(),
          :linkedAccountId => any(),
          :remarketingAudienceId => any(),
          :status => any(),
          :type => any(),
          :webPropertyId => any()
        }

  field(:accountId)
  field(:eligibleForSearch)
  field(:id)
  field(:internalWebPropertyId)
  field(:kind)
  field(:linkedAccountId)
  field(:remarketingAudienceId)
  field(:status)
  field(:type)
  field(:webPropertyId)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.LinkedForeignAccount do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.LinkedForeignAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.LinkedForeignAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end