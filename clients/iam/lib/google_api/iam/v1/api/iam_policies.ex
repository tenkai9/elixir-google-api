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

defmodule GoogleApi.IAM.V1.Api.IamPolicies do
  @moduledoc """
  API calls for all endpoints tagged `IamPolicies`.
  """

  alias GoogleApi.IAM.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Lints a Cloud IAM policy object or its sub fields. Currently supports google.iam.v1.Policy, google.iam.v1.Binding and google.iam.v1.Binding.condition.  Each lint operation consists of multiple lint validation units. Validation units have the following properties:  - Each unit inspects the input object in regard to a particular   linting aspect and issues a google.iam.admin.v1.LintResult   disclosing the result. - Domain of discourse of each unit can be either   google.iam.v1.Policy, google.iam.v1.Binding, or   google.iam.v1.Binding.condition depending on the purpose of the   validation. - A unit may require additional data (like the list of all possible   enumerable values of a particular attribute used in the policy instance)   which shall be provided by the caller. Refer to the comments of   google.iam.admin.v1.LintPolicyRequest.context for more details.  The set of applicable validation units is determined by the Cloud IAM server and is not configurable.  Regardless of any lint issues or their severities, successful calls to &#x60;lintPolicy&#x60; return an HTTP 200 OK status code.

  ## Parameters

  - connection (GoogleApi.IAM.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :body (LintPolicyRequest): 

  ## Returns

  {:ok, %GoogleApi.IAM.V1.Model.LintPolicyResponse{}} on success
  {:error, info} on failure
  """
  @spec iam_iam_policies_lint_policy(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.IAM.V1.Model.LintPolicyResponse.t()} | {:error, Tesla.Env.t()}
  def iam_iam_policies_lint_policy(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :uploadType => :query,
      :fields => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/iamPolicies:lintPolicy")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.LintPolicyResponse{}])
  end

  @doc """
  Returns a list of services that support service level audit logging configuration for the given resource.

  ## Parameters

  - connection (GoogleApi.IAM.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :body (QueryAuditableServicesRequest): 

  ## Returns

  {:ok, %GoogleApi.IAM.V1.Model.QueryAuditableServicesResponse{}} on success
  {:error, info} on failure
  """
  @spec iam_iam_policies_query_auditable_services(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.IAM.V1.Model.QueryAuditableServicesResponse.t()}
          | {:error, Tesla.Env.t()}
  def iam_iam_policies_query_auditable_services(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :uploadType => :query,
      :fields => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/iamPolicies:queryAuditableServices")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.QueryAuditableServicesResponse{}])
  end
end
