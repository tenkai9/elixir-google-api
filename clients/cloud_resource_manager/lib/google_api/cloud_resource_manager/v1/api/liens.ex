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

defmodule GoogleApi.CloudResourceManager.V1.Api.Liens do
  @moduledoc """
  API calls for all endpoints tagged `Liens`.
  """

  alias GoogleApi.CloudResourceManager.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Create a Lien which applies to the resource denoted by the &#x60;parent&#x60; field.  Callers of this method will require permission on the &#x60;parent&#x60; resource. For example, applying to &#x60;projects/1234&#x60; requires permission &#x60;resourcemanager.projects.updateLiens&#x60;.  NOTE: Some resources may limit the number of Liens which may be applied.

  ## Parameters

  - connection (GoogleApi.CloudResourceManager.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :body (Lien): 

  ## Returns

  {:ok, %GoogleApi.CloudResourceManager.V1.Model.Lien{}} on success
  {:error, info} on failure
  """
  @spec cloudresourcemanager_liens_create(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.CloudResourceManager.V1.Model.Lien.t()} | {:error, Tesla.Env.t()}
  def cloudresourcemanager_liens_create(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/liens")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudResourceManager.V1.Model.Lien{}])
  end

  @doc """
  Delete a Lien by &#x60;name&#x60;.  Callers of this method will require permission on the &#x60;parent&#x60; resource. For example, a Lien with a &#x60;parent&#x60; of &#x60;projects/1234&#x60; requires permission &#x60;resourcemanager.projects.updateLiens&#x60;.

  ## Parameters

  - connection (GoogleApi.CloudResourceManager.V1.Connection): Connection to server
  - liens_id (String.t): Part of &#x60;name&#x60;. The name/identifier of the Lien to delete.
  - optional_params (KeywordList): [optional] Optional parameters
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.

  ## Returns

  {:ok, %GoogleApi.CloudResourceManager.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec cloudresourcemanager_liens_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudResourceManager.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def cloudresourcemanager_liens_delete(connection, liens_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/liens/{liensId}", %{
        "liensId" => URI.encode_www_form(liens_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudResourceManager.V1.Model.Empty{}])
  end

  @doc """
  Retrieve a Lien by &#x60;name&#x60;.  Callers of this method will require permission on the &#x60;parent&#x60; resource. For example, a Lien with a &#x60;parent&#x60; of &#x60;projects/1234&#x60; requires permission requires permission &#x60;resourcemanager.projects.get&#x60; or &#x60;resourcemanager.projects.updateLiens&#x60;.

  ## Parameters

  - connection (GoogleApi.CloudResourceManager.V1.Connection): Connection to server
  - liens_id (String.t): Part of &#x60;name&#x60;. The name/identifier of the Lien.
  - optional_params (KeywordList): [optional] Optional parameters
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.

  ## Returns

  {:ok, %GoogleApi.CloudResourceManager.V1.Model.Lien{}} on success
  {:error, info} on failure
  """
  @spec cloudresourcemanager_liens_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudResourceManager.V1.Model.Lien.t()} | {:error, Tesla.Env.t()}
  def cloudresourcemanager_liens_get(connection, liens_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/liens/{liensId}", %{
        "liensId" => URI.encode_www_form(liens_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudResourceManager.V1.Model.Lien{}])
  end

  @doc """
  List all Liens applied to the &#x60;parent&#x60; resource.  Callers of this method will require permission on the &#x60;parent&#x60; resource. For example, a Lien with a &#x60;parent&#x60; of &#x60;projects/1234&#x60; requires permission &#x60;resourcemanager.projects.get&#x60;.

  ## Parameters

  - connection (GoogleApi.CloudResourceManager.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :pageSize (integer()): The maximum number of items to return. This is a suggestion for the server.
    - :parent (String.t): The name of the resource to list all attached Liens. For example, &#x60;projects/1234&#x60;.
    - :pageToken (String.t): The &#x60;next_page_token&#x60; value returned from a previous List request, if any.

  ## Returns

  {:ok, %GoogleApi.CloudResourceManager.V1.Model.ListLiensResponse{}} on success
  {:error, info} on failure
  """
  @spec cloudresourcemanager_liens_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.CloudResourceManager.V1.Model.ListLiensResponse.t()}
          | {:error, Tesla.Env.t()}
  def cloudresourcemanager_liens_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :fields => :query,
      :uploadType => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :pageSize => :query,
      :parent => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/liens")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudResourceManager.V1.Model.ListLiensResponse{}]
    )
  end
end
