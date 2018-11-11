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

defmodule GoogleApi.Vision.V1.Api.Locations do
  @moduledoc """
  API calls for all endpoints tagged `Locations`.
  """

  alias GoogleApi.Vision.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets the latest state of a long-running operation.  Clients can use this method to poll the operation result at intervals as recommended by the API service.

  ## Parameters

  - connection (GoogleApi.Vision.V1.Connection): Connection to server
  - name (String.t): The name of the operation resource.
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :filter (String.t): The standard list filter.
    - :pageToken (String.t): The standard list page token.
    - :pageSize (integer()): The standard list page size.

  ## Returns

  {:ok, %GoogleApi.Vision.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec vision_locations_operations_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Vision.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def vision_locations_operations_get(connection, name, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :filter => :query,
      :pageToken => :query,
      :pageSize => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Vision.V1.Model.Operation{}])
  end
end
