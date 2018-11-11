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

defmodule GoogleApi.Testing.V1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.Testing.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Cancels unfinished test executions in a test matrix. This call returns immediately and cancellation proceeds asychronously. If the matrix is already final, this operation will have no effect.  May return any of the following canonical error codes:  - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Test Matrix does not exist

  ## Parameters

  - connection (GoogleApi.Testing.V1.Connection): Connection to server
  - project_id (String.t): Cloud project that owns the test.
  - test_matrix_id (String.t): Test matrix that will be canceled.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP

  ## Returns

  {:ok, %GoogleApi.Testing.V1.Model.CancelTestMatrixResponse{}} on success
  {:error, info} on failure
  """
  @spec testing_projects_test_matrices_cancel(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.Testing.V1.Model.CancelTestMatrixResponse.t()} | {:error, Tesla.Env.t()}
  def testing_projects_test_matrices_cancel(
        connection,
        project_id,
        test_matrix_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :fields => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/projects/{projectId}/testMatrices/{testMatrixId}:cancel", %{
        "projectId" => URI.encode_www_form(project_id),
        "testMatrixId" => URI.encode_www_form(test_matrix_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Testing.V1.Model.CancelTestMatrixResponse{}])
  end

  @doc """
  Request to run a matrix of tests according to the given specifications. Unsupported environments will be returned in the state UNSUPPORTED. Matrices are limited to at most 200 supported executions.  May return any of the following canonical error codes:  - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed or if the matrix expands                      to more than 200 supported executions

  ## Parameters

  - connection (GoogleApi.Testing.V1.Connection): Connection to server
  - project_id (String.t): The GCE project under which this job will run.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :requestId (String.t): A string id used to detect duplicated requests. Ids are automatically scoped to a project, so users should ensure the ID is unique per-project. A UUID is recommended.  Optional, but strongly recommended.
    - :body (TestMatrix): 

  ## Returns

  {:ok, %GoogleApi.Testing.V1.Model.TestMatrix{}} on success
  {:error, info} on failure
  """
  @spec testing_projects_test_matrices_create(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Testing.V1.Model.TestMatrix.t()} | {:error, Tesla.Env.t()}
  def testing_projects_test_matrices_create(
        connection,
        project_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :fields => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :requestId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/projects/{projectId}/testMatrices", %{
        "projectId" => URI.encode_www_form(project_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Testing.V1.Model.TestMatrix{}])
  end

  @doc """
  Check the status of a test matrix.  May return any of the following canonical error codes:  - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Test Matrix does not exist

  ## Parameters

  - connection (GoogleApi.Testing.V1.Connection): Connection to server
  - project_id (String.t): Cloud project that owns the test matrix.
  - test_matrix_id (String.t): Unique test matrix id which was assigned by the service.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP

  ## Returns

  {:ok, %GoogleApi.Testing.V1.Model.TestMatrix{}} on success
  {:error, info} on failure
  """
  @spec testing_projects_test_matrices_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Testing.V1.Model.TestMatrix.t()} | {:error, Tesla.Env.t()}
  def testing_projects_test_matrices_get(
        connection,
        project_id,
        test_matrix_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :fields => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/projects/{projectId}/testMatrices/{testMatrixId}", %{
        "projectId" => URI.encode_www_form(project_id),
        "testMatrixId" => URI.encode_www_form(test_matrix_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Testing.V1.Model.TestMatrix{}])
  end
end
