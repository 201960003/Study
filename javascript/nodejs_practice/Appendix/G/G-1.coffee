# 로그인을 수행합니다.
$.ajax "/users/login",
type: "POST"
data:
    login: login
    password: password
    dummy: new Date().getTime()
    success: () ->
        # 로그인 성공
        location.hash = "main"
    error: () ->
        # 로그인 실패
        $("#login").val ""
        $("#password").val ""
        alert "로그인에 실패했습니다."