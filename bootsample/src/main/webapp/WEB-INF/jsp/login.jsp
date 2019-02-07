<!--
  ~ Copyright 2018 Okta, Inc.
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~     http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  -->
<!doctype html>

<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <!--/*/ <th:block th:include="fragments/head :: head"/> /*/-->
</head>

<body>
<!-- Render the login widget here -->
<div id="okta-login-container"></div>

<script th:inline="javascript">
    /*<![CDATA[*/
    $( document ).ready(function() {
        var data = {
            logo: 'https://ok1static.oktacdn.com/assets/img/logos/okta-logo.png',
            baseUrl: [[${baseUrl}]],
            clientId: [[${clientId}]],
            redirectUri: [[${redirectUri}]],
            authParams: {
                issuer: [[${issuer}]],
                state: [[${state}]],
                scopes: [[${scopes}]],
                responseType: 'code',
                display: 'page'
            }
        };
        new OktaSignIn(data).renderEl({el: '#okta-login-container'}, function (res) {});
    });
    /*]]>*/
</script>
</body>
</html>
