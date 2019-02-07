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
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <!--/*/ <th:block th:include="fragments/head :: head"/> /*/-->
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="box col-md-6 col-md-offset-3">
            <div class="okta-header">
                <img width="300px" src="/static/images/OktaLogo.png"/>

            </div>
            <div class="logo">
                <h1>403</h1>
            </div>
            <p class="lead text-muted">Unauthorized</p>
            <a href="/authenticated" class="btn btn-success">Back</a>
        </div>
    </div>
</div>
</body>
</html>