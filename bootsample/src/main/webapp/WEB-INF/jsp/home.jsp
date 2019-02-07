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
<!-- Render the REST response here -->
<div id="rest-response-container" class="row">
    <div class="box col-md-10 col-md-offset-1">
        <div class="okta-header">
            <img width="300px" src="/images/OktaLogo.png"/>
        </div>

        <h3>Welcome!</h3>

        <a href="/authorization-code/callback" class="btn btn-success">Login</a>
    </div>
</div>
</body>
</html>
