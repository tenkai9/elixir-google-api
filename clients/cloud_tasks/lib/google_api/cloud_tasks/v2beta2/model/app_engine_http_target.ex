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

defmodule GoogleApi.CloudTasks.V2beta2.Model.AppEngineHttpTarget do
  @moduledoc """
  App Engine HTTP target.  The task will be delivered to the App Engine application hostname specified by its AppEngineHttpTarget and AppEngineHttpRequest. The documentation for AppEngineHttpRequest explains how the task&#39;s host URL is constructed.  Using AppEngineHttpTarget requires [&#x60;appengine.applications.get&#x60;](https://cloud.google.com/appengine/docs/admin-api/access-control) Google IAM permission for the project and the following scope:  &#x60;https://www.googleapis.com/auth/cloud-platform&#x60;

  ## Attributes

  - appEngineRoutingOverride (AppEngineRouting): Overrides for the task-level app_engine_routing.  If set, &#x60;app_engine_routing_override&#x60; is used for all tasks in the queue, no matter what the setting is for the task-level app_engine_routing. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appEngineRoutingOverride => GoogleApi.CloudTasks.V2beta2.Model.AppEngineRouting.t()
        }

  field(:appEngineRoutingOverride, as: GoogleApi.CloudTasks.V2beta2.Model.AppEngineRouting)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2beta2.Model.AppEngineHttpTarget do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2beta2.Model.AppEngineHttpTarget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2beta2.Model.AppEngineHttpTarget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
