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

defmodule GoogleApi.WebSecurityScanner.V1alpha.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.WebSecurityScanner.V1alpha.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Creates a new ScanConfig.

  ## Parameters

  - connection (GoogleApi.WebSecurityScanner.V1alpha.Connection): Connection to server
  - parent (String.t): Required. The parent resource name where the scan is created, which should be a project resource name in the format &#39;projects/{projectId}&#39;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :body (ScanConfig): 

  ## Returns

  {:ok, %GoogleApi.WebSecurityScanner.V1alpha.Model.ScanConfig{}} on success
  {:error, info} on failure
  """
  @spec websecurityscanner_projects_scan_configs_create(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.WebSecurityScanner.V1alpha.Model.ScanConfig.t()}
          | {:error, Tesla.Env.t()}
  def websecurityscanner_projects_scan_configs_create(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1alpha/{+parent}/scanConfigs", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.WebSecurityScanner.V1alpha.Model.ScanConfig{}])
  end

  @doc """
  Deletes an existing ScanConfig and its child resources.

  ## Parameters

  - connection (GoogleApi.WebSecurityScanner.V1alpha.Connection): Connection to server
  - name (String.t): Required. The resource name of the ScanConfig to be deleted. The name follows the format of &#39;projects/{projectId}/scanConfigs/{scanConfigId}&#39;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.

  ## Returns

  {:ok, %GoogleApi.WebSecurityScanner.V1alpha.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec websecurityscanner_projects_scan_configs_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.WebSecurityScanner.V1alpha.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def websecurityscanner_projects_scan_configs_delete(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1alpha/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.WebSecurityScanner.V1alpha.Model.Empty{}])
  end

  @doc """
  Lists ScanConfigs under a given project.

  ## Parameters

  - connection (GoogleApi.WebSecurityScanner.V1alpha.Connection): Connection to server
  - parent (String.t): Required. The parent resource name, which should be a project resource name in the format &#39;projects/{projectId}&#39;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :pageSize (integer()): The maximum number of ScanConfigs to return, can be limited by server. If not specified or not positive, the implementation will select a reasonable value.
    - :pageToken (String.t): A token identifying a page of results to be returned. This should be a &#x60;next_page_token&#x60; value returned from a previous List request. If unspecified, the first page of results is returned.

  ## Returns

  {:ok, %GoogleApi.WebSecurityScanner.V1alpha.Model.ListScanConfigsResponse{}} on success
  {:error, info} on failure
  """
  @spec websecurityscanner_projects_scan_configs_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.WebSecurityScanner.V1alpha.Model.ListScanConfigsResponse.t()}
          | {:error, Tesla.Env.t()}
  def websecurityscanner_projects_scan_configs_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1alpha/{+parent}/scanConfigs", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.WebSecurityScanner.V1alpha.Model.ListScanConfigsResponse{}]
    )
  end

  @doc """
  Updates a ScanConfig. This method support partial update of a ScanConfig.

  ## Parameters

  - connection (GoogleApi.WebSecurityScanner.V1alpha.Connection): Connection to server
  - name (String.t): The resource name of the ScanConfig. The name follows the format of &#39;projects/{projectId}/scanConfigs/{scanConfigId}&#39;. The ScanConfig IDs are generated by the system.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :updateMask (String.t): Required. The update mask applies to the resource. For the &#x60;FieldMask&#x60; definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
    - :body (ScanConfig): 

  ## Returns

  {:ok, %GoogleApi.WebSecurityScanner.V1alpha.Model.ScanConfig{}} on success
  {:error, info} on failure
  """
  @spec websecurityscanner_projects_scan_configs_patch(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.WebSecurityScanner.V1alpha.Model.ScanConfig.t()}
          | {:error, Tesla.Env.t()}
  def websecurityscanner_projects_scan_configs_patch(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1alpha/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.WebSecurityScanner.V1alpha.Model.ScanConfig{}])
  end

  @doc """
  List CrawledUrls under a given ScanRun.

  ## Parameters

  - connection (GoogleApi.WebSecurityScanner.V1alpha.Connection): Connection to server
  - parent (String.t): Required. The parent resource name, which should be a scan run resource name in the format &#39;projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}&#39;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :pageToken (String.t): A token identifying a page of results to be returned. This should be a &#x60;next_page_token&#x60; value returned from a previous List request. If unspecified, the first page of results is returned.
    - :pageSize (integer()): The maximum number of CrawledUrls to return, can be limited by server. If not specified or not positive, the implementation will select a reasonable value.

  ## Returns

  {:ok, %GoogleApi.WebSecurityScanner.V1alpha.Model.ListCrawledUrlsResponse{}} on success
  {:error, info} on failure
  """
  @spec websecurityscanner_projects_scan_configs_scan_runs_crawled_urls_list(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.WebSecurityScanner.V1alpha.Model.ListCrawledUrlsResponse.t()}
          | {:error, Tesla.Env.t()}
  def websecurityscanner_projects_scan_configs_scan_runs_crawled_urls_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :pageToken => :query,
      :pageSize => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1alpha/{+parent}/crawledUrls", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.WebSecurityScanner.V1alpha.Model.ListCrawledUrlsResponse{}]
    )
  end

  @doc """
  List all FindingTypeStats under a given ScanRun.

  ## Parameters

  - connection (GoogleApi.WebSecurityScanner.V1alpha.Connection): Connection to server
  - parent (String.t): Required. The parent resource name, which should be a scan run resource name in the format &#39;projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}&#39;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.

  ## Returns

  {:ok, %GoogleApi.WebSecurityScanner.V1alpha.Model.ListFindingTypeStatsResponse{}} on success
  {:error, info} on failure
  """
  @spec websecurityscanner_projects_scan_configs_scan_runs_finding_type_stats_list(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.WebSecurityScanner.V1alpha.Model.ListFindingTypeStatsResponse.t()}
          | {:error, Tesla.Env.t()}
  def websecurityscanner_projects_scan_configs_scan_runs_finding_type_stats_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1alpha/{+parent}/findingTypeStats", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.WebSecurityScanner.V1alpha.Model.ListFindingTypeStatsResponse{}]
    )
  end

  @doc """
  Gets a Finding.

  ## Parameters

  - connection (GoogleApi.WebSecurityScanner.V1alpha.Connection): Connection to server
  - name (String.t): Required. The resource name of the Finding to be returned. The name follows the format of &#39;projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}/findings/{findingId}&#39;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.

  ## Returns

  {:ok, %GoogleApi.WebSecurityScanner.V1alpha.Model.Finding{}} on success
  {:error, info} on failure
  """
  @spec websecurityscanner_projects_scan_configs_scan_runs_findings_get(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.WebSecurityScanner.V1alpha.Model.Finding.t()} | {:error, Tesla.Env.t()}
  def websecurityscanner_projects_scan_configs_scan_runs_findings_get(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1alpha/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.WebSecurityScanner.V1alpha.Model.Finding{}])
  end

  @doc """
  List Findings under a given ScanRun.

  ## Parameters

  - connection (GoogleApi.WebSecurityScanner.V1alpha.Connection): Connection to server
  - parent (String.t): Required. The parent resource name, which should be a scan run resource name in the format &#39;projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}&#39;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :pageSize (integer()): The maximum number of Findings to return, can be limited by server. If not specified or not positive, the implementation will select a reasonable value.
    - :filter (String.t): The filter expression. The expression must be in the format: &lt;field&gt; &lt;operator&gt; &lt;value&gt;. Supported field: &#39;finding_type&#39;. Supported operator: &#39;&#x3D;&#39;.
    - :pageToken (String.t): A token identifying a page of results to be returned. This should be a &#x60;next_page_token&#x60; value returned from a previous List request. If unspecified, the first page of results is returned.

  ## Returns

  {:ok, %GoogleApi.WebSecurityScanner.V1alpha.Model.ListFindingsResponse{}} on success
  {:error, info} on failure
  """
  @spec websecurityscanner_projects_scan_configs_scan_runs_findings_list(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.WebSecurityScanner.V1alpha.Model.ListFindingsResponse.t()}
          | {:error, Tesla.Env.t()}
  def websecurityscanner_projects_scan_configs_scan_runs_findings_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :pageSize => :query,
      :filter => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1alpha/{+parent}/findings", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.WebSecurityScanner.V1alpha.Model.ListFindingsResponse{}]
    )
  end

  @doc """
  Lists ScanRuns under a given ScanConfig, in descending order of ScanRun stop time.

  ## Parameters

  - connection (GoogleApi.WebSecurityScanner.V1alpha.Connection): Connection to server
  - parent (String.t): Required. The parent resource name, which should be a scan resource name in the format &#39;projects/{projectId}/scanConfigs/{scanConfigId}&#39;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :pageSize (integer()): The maximum number of ScanRuns to return, can be limited by server. If not specified or not positive, the implementation will select a reasonable value.
    - :pageToken (String.t): A token identifying a page of results to be returned. This should be a &#x60;next_page_token&#x60; value returned from a previous List request. If unspecified, the first page of results is returned.

  ## Returns

  {:ok, %GoogleApi.WebSecurityScanner.V1alpha.Model.ListScanRunsResponse{}} on success
  {:error, info} on failure
  """
  @spec websecurityscanner_projects_scan_configs_scan_runs_list(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.WebSecurityScanner.V1alpha.Model.ListScanRunsResponse.t()}
          | {:error, Tesla.Env.t()}
  def websecurityscanner_projects_scan_configs_scan_runs_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1alpha/{+parent}/scanRuns", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.WebSecurityScanner.V1alpha.Model.ListScanRunsResponse{}]
    )
  end

  @doc """
  Stops a ScanRun. The stopped ScanRun is returned.

  ## Parameters

  - connection (GoogleApi.WebSecurityScanner.V1alpha.Connection): Connection to server
  - name (String.t): Required. The resource name of the ScanRun to be stopped. The name follows the format of &#39;projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}&#39;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :body (StopScanRunRequest): 

  ## Returns

  {:ok, %GoogleApi.WebSecurityScanner.V1alpha.Model.ScanRun{}} on success
  {:error, info} on failure
  """
  @spec websecurityscanner_projects_scan_configs_scan_runs_stop(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.WebSecurityScanner.V1alpha.Model.ScanRun.t()} | {:error, Tesla.Env.t()}
  def websecurityscanner_projects_scan_configs_scan_runs_stop(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1alpha/{+name}:stop", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.WebSecurityScanner.V1alpha.Model.ScanRun{}])
  end

  @doc """
  Start a ScanRun according to the given ScanConfig.

  ## Parameters

  - connection (GoogleApi.WebSecurityScanner.V1alpha.Connection): Connection to server
  - name (String.t): Required. The resource name of the ScanConfig to be used. The name follows the format of &#39;projects/{projectId}/scanConfigs/{scanConfigId}&#39;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :body (StartScanRunRequest): 

  ## Returns

  {:ok, %GoogleApi.WebSecurityScanner.V1alpha.Model.ScanRun{}} on success
  {:error, info} on failure
  """
  @spec websecurityscanner_projects_scan_configs_start(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.WebSecurityScanner.V1alpha.Model.ScanRun.t()} | {:error, Tesla.Env.t()}
  def websecurityscanner_projects_scan_configs_start(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1alpha/{+name}:start", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.WebSecurityScanner.V1alpha.Model.ScanRun{}])
  end
end
