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

<html lang="en" xmlns:th="http://www.thymeleaf.org" xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity4">
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

        <h3 th:inline="text">Hello, <span sec:authentication="principal">${principal.getName()}</span></h3>

        <h4 sec:authorize="hasAuthority('user')">You are in the users group</h4>
        <h4 sec:authorize="hasAuthority('admin')">You are in the admins group</h4>

        <a href="/authenticated" class="btn btn-success">Back</a>
    </div>
</div>
</body>
</html>
