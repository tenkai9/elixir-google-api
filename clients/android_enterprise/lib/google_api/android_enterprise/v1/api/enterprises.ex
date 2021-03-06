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

defmodule GoogleApi.AndroidEnterprise.V1.Api.Enterprises do
  @moduledoc """
  API calls for all endpoints tagged `Enterprises`.
  """

  alias GoogleApi.AndroidEnterprise.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Acknowledges notifications that were received from Enterprises.PullNotificationSet to prevent subsequent calls from returning the same notifications.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :notificationSetId (String.t): The notification set ID as returned by Enterprises.PullNotificationSet. This must be provided.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_acknowledge_notification_set(Tesla.Env.client(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_acknowledge_notification_set(
        connection,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :notificationSetId => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/enterprises/acknowledgeNotificationSet")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Completes the signup flow, by specifying the Completion token and Enterprise token. This request must not be called multiple times for a given Enterprise Token.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :completionToken (String.t): The Completion token initially returned by GenerateSignupUrl.
    - :enterpriseToken (String.t): The Enterprise token appended to the Callback URL.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.Enterprise{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_complete_signup(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.Enterprise.t()} | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_complete_signup(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :completionToken => :query,
      :enterpriseToken => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/enterprises/completeSignup")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.Enterprise{}])
  end

  @doc """
  Returns a unique token to access an embeddable UI. To generate a web UI, pass the generated token into the managed Google Play javascript API. Each token may only be used to start one UI session. See the javascript API documentation for further information.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (AdministratorWebTokenSpec): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebToken{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_create_web_token(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebToken.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_create_web_token(
        connection,
        enterprise_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/enterprises/{enterpriseId}/createWebToken", %{
        "enterpriseId" => URI.encode_www_form(enterprise_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebToken{}]
    )
  end

  @doc """
  Enrolls an enterprise with the calling EMM.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - token (String.t): The token provided by the enterprise to register the EMM.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Enterprise): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.Enterprise{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_enroll(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.Enterprise.t()} | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_enroll(connection, token, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/enterprises/enroll")
      |> Request.add_param(:query, :token, token)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.Enterprise{}])
  end

  @doc """
  Generates a sign-up URL.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :callbackUrl (String.t): The callback URL to which the Admin will be redirected after successfully creating an enterprise. Before redirecting there the system will add a single query parameter to this URL named \&quot;enterpriseToken\&quot; which will contain an opaque token to be used for the CompleteSignup request. Beware that this means that the URL will be parsed, the parameter added and then a new URL formatted, i.e. there may be some minor formatting changes and, more importantly, the URL must be well-formed so that it can be parsed.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.SignupInfo{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_generate_signup_url(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.SignupInfo.t()} | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_generate_signup_url(
        connection,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :callbackUrl => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/enterprises/signupUrl")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.SignupInfo{}])
  end

  @doc """
  Retrieves the name and domain of an enterprise.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.Enterprise{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.Enterprise.t()} | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_get(
        connection,
        enterprise_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/enterprises/{enterpriseId}", %{
        "enterpriseId" => URI.encode_www_form(enterprise_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.Enterprise{}])
  end

  @doc """
  Deprecated and unused.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.AndroidDevicePolicyConfig{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_get_android_device_policy_config(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.AndroidDevicePolicyConfig.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_get_android_device_policy_config(
        connection,
        enterprise_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/enterprises/{enterpriseId}/androidDevicePolicyConfig", %{
        "enterpriseId" => URI.encode_www_form(enterprise_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.AndroidDevicePolicyConfig{}]
    )
  end

  @doc """
  Returns a service account and credentials. The service account can be bound to the enterprise by calling setAccount. The service account is unique to this enterprise and EMM, and will be deleted if the enterprise is unbound. The credentials contain private key data and are not stored server-side.  This method can only be called after calling Enterprises.Enroll or Enterprises.CompleteSignup, and before Enterprises.SetAccount; at other times it will return an error.  Subsequent calls after the first will generate a new, unique set of credentials, and invalidate the previously generated credentials.  Once the service account is bound to the enterprise, it can be managed using the serviceAccountKeys resource.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :keyType (String.t): The type of credential to return with the service account. Required.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.ServiceAccount{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_get_service_account(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.ServiceAccount.t()} | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_get_service_account(
        connection,
        enterprise_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :keyType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/enterprises/{enterpriseId}/serviceAccount", %{
        "enterpriseId" => URI.encode_www_form(enterprise_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.ServiceAccount{}])
  end

  @doc """
  Returns the store layout for the enterprise. If the store layout has not been set, returns \&quot;basic\&quot; as the store layout type and no homepage.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.StoreLayout{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_get_store_layout(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.StoreLayout.t()} | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_get_store_layout(
        connection,
        enterprise_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/enterprises/{enterpriseId}/storeLayout", %{
        "enterpriseId" => URI.encode_www_form(enterprise_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.StoreLayout{}])
  end

  @doc """
  Looks up an enterprise by domain name. This is only supported for enterprises created via the Google-initiated creation flow. Lookup of the id is not needed for enterprises created via the EMM-initiated flow since the EMM learns the enterprise ID in the callback specified in the Enterprises.generateSignupUrl call.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - domain (String.t): The exact primary domain name of the enterprise to look up.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.EnterprisesListResponse{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.EnterprisesListResponse.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_list(connection, domain, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/enterprises")
      |> Request.add_param(:query, :domain, domain)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.EnterprisesListResponse{}]
    )
  end

  @doc """
  Pulls and returns a notification set for the enterprises associated with the service account authenticated for the request. The notification set may be empty if no notification are pending. A notification set returned needs to be acknowledged within 20 seconds by calling Enterprises.AcknowledgeNotificationSet, unless the notification set is empty. Notifications that are not acknowledged within the 20 seconds will eventually be included again in the response to another PullNotificationSet request, and those that are never acknowledged will ultimately be deleted according to the Google Cloud Platform Pub/Sub system policy. Multiple requests might be performed concurrently to retrieve notifications, in which case the pending notifications (if any) will be split among each caller, if any are pending. If no notifications are present, an empty notification list is returned. Subsequent requests may return more notifications once they become available.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :requestMode (String.t): The request mode for pulling notifications. Specifying waitForNotifications will cause the request to block and wait until one or more notifications are present, or return an empty notification list if no notifications are present after some time. Speciying returnImmediately will cause the request to immediately return the pending notifications, or an empty list if no notifications are present. If omitted, defaults to waitForNotifications.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.NotificationSet{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_pull_notification_set(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.NotificationSet.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_pull_notification_set(
        connection,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :requestMode => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/enterprises/pullNotificationSet")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.NotificationSet{}])
  end

  @doc """
  Sends a test notification to validate the EMM integration with the Google Cloud Pub/Sub service for this enterprise.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.EnterprisesSendTestPushNotificationResponse{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_send_test_push_notification(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.AndroidEnterprise.V1.Model.EnterprisesSendTestPushNotificationResponse.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_send_test_push_notification(
        connection,
        enterprise_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/enterprises/{enterpriseId}/sendTestPushNotification", %{
        "enterpriseId" => URI.encode_www_form(enterprise_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.AndroidEnterprise.V1.Model.EnterprisesSendTestPushNotificationResponse{}
        ]
    )
  end

  @doc """
  Sets the account that will be used to authenticate to the API as the enterprise.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (EnterpriseAccount): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.EnterpriseAccount{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_set_account(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.EnterpriseAccount.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_set_account(
        connection,
        enterprise_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/enterprises/{enterpriseId}/account", %{
        "enterpriseId" => URI.encode_www_form(enterprise_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.EnterpriseAccount{}]
    )
  end

  @doc """
  Deprecated and unused.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (AndroidDevicePolicyConfig): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.AndroidDevicePolicyConfig{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_set_android_device_policy_config(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.AndroidDevicePolicyConfig.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_set_android_device_policy_config(
        connection,
        enterprise_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/enterprises/{enterpriseId}/androidDevicePolicyConfig", %{
        "enterpriseId" => URI.encode_www_form(enterprise_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.AndroidDevicePolicyConfig{}]
    )
  end

  @doc """
  Sets the store layout for the enterprise. By default, storeLayoutType is set to \&quot;basic\&quot; and the basic store layout is enabled. The basic layout only contains apps approved by the admin, and that have been added to the available product set for a user (using the  setAvailableProductSet call). Apps on the page are sorted in order of their product ID value. If you create a custom store layout (by setting storeLayoutType &#x3D; \&quot;custom\&quot; and setting a homepage), the basic store layout is disabled.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (StoreLayout): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.StoreLayout{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_set_store_layout(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.StoreLayout.t()} | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_set_store_layout(
        connection,
        enterprise_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/enterprises/{enterpriseId}/storeLayout", %{
        "enterpriseId" => URI.encode_www_form(enterprise_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.StoreLayout{}])
  end

  @doc """
  Unenrolls an enterprise from the calling EMM.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_enterprises_unenroll(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def androidenterprise_enterprises_unenroll(
        connection,
        enterprise_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/enterprises/{enterpriseId}/unenroll", %{
        "enterpriseId" => URI.encode_www_form(enterprise_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end
end
