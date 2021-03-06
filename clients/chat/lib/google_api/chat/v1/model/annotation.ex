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

defmodule GoogleApi.Chat.V1.Model.Annotation do
  @moduledoc """
  Annotations associated with the plain-text body of the message.  Example plain-text message body: &#x60;&#x60;&#x60; Hello @FooBot how are you!\&quot; &#x60;&#x60;&#x60;  The corresponding annotations metadata: &#x60;&#x60;&#x60; \&quot;annotations\&quot;:[{   \&quot;type\&quot;:\&quot;USER_MENTION\&quot;,   \&quot;startIndex\&quot;:6,   \&quot;length\&quot;:7,   \&quot;userMention\&quot;: {     \&quot;user\&quot;: {       \&quot;name\&quot;:\&quot;users/107946847022116401880\&quot;,       \&quot;displayName\&quot;:\&quot;FooBot\&quot;,       \&quot;avatarUrl\&quot;:\&quot;https://goo.gl/aeDtrS\&quot;,       \&quot;type\&quot;:\&quot;BOT\&quot;     },     \&quot;type\&quot;:\&quot;MENTION\&quot;    } }] &#x60;&#x60;&#x60;

  ## Attributes

  - length (integer()): Length of the substring in the plain-text message body this annotation corresponds to. Defaults to: `null`.
  - startIndex (integer()): Start index (0-based, inclusive) in the plain-text message body this annotation corresponds to. Defaults to: `null`.
  - type (String.t): The type of this annotation. Defaults to: `null`.
    - Enum - one of [ANNOTATION_TYPE_UNSPECIFIED, USER_MENTION]
  - userMention (UserMentionMetadata): The metadata of user mention. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :length => any(),
          :startIndex => any(),
          :type => any(),
          :userMention => GoogleApi.Chat.V1.Model.UserMentionMetadata.t()
        }

  field(:length)
  field(:startIndex)
  field(:type)
  field(:userMention, as: GoogleApi.Chat.V1.Model.UserMentionMetadata)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Annotation do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Annotation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Annotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
