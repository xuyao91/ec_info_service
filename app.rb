require "sinatra"
#require "sinatra/config_file"
set :public_folder, 'public'
set :bind, '0.0.0.0'
#config_file "config/config.yml"  
API_VCOOLINE_URL= "http://ec.vcooline.com"
#API_VCOOLINE_URL= "http://127.0.0.1:3001"

get "/" do
  erb :order	
end

__END__

@@ layout
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>微客来电商信息快速查询服务</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="jumbotron-narrow.css">
    <script src="jquery.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <script src="ractive.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="header">
        <ul class="nav nav-pills pull-right" role="tablist">
          <li role="presentation" class="active"><a href="#">订单</a></li>
          <li role="presentation"><a href="#">其它</a></li>
        </ul>
        <h3 class="text-muted">微客来电商信息快速查询服务</h3>
      </div>
     <%= yield %> 
    <br/><br/>      
    <div class="footer">
      <p style="text-align:center;">© Vcooline Company 2015, 沪ICP备13009389号-5, power by peterxu</p>
    </div>
    </div>
  </body>
</html>




