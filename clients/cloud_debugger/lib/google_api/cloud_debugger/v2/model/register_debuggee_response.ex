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

defmodule GoogleApi.CloudDebugger.V2.Model.RegisterDebuggeeResponse do
  @moduledoc """
  Response for registering a debuggee.

  ## Attributes

  - debuggee (Debuggee): Debuggee resource. The field &#x60;id&#x60; is guranteed to be set (in addition to the echoed fields). If the field &#x60;is_disabled&#x60; is set to &#x60;true&#x60;, the agent should disable itself by removing all breakpoints and detaching from the application. It should however continue to poll &#x60;RegisterDebuggee&#x60; until reenabled. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :debuggee => GoogleApi.CloudDebugger.V2.Model.Debuggee.t()
        }

  field(:debuggee, as: GoogleApi.CloudDebugger.V2.Model.Debuggee)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDebugger.V2.Model.RegisterDebuggeeResponse do
  def decode(value, options) do
    GoogleApi.CloudDebugger.V2.Model.RegisterDebuggeeResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDebugger.V2.Model.RegisterDebuggeeResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
