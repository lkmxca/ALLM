$(function(){
  $(".login").click(function(){
    var uname = $(".uname").val();
    var uemail = $(".uemail").val();
    var upwd = $(".upwd").val();
    $.ajax({
      url:"http://localhost:8085/users/signin",
      type:"post",
      data:{uname,upwd,uemail},
      dataType:"json",
      success:function(data){
        if(data.ok==0) alert(data.msg);
        else{
          alert("登录成功,自动返回上一页!");
          if(location.search.indexOf("back=")!=-1){
            var back=location.search.slice(6);
            location.href=back;
          }else{
            location.href="http://localhost:8085/index.html"
          }
        }
      }
    })
  })
})