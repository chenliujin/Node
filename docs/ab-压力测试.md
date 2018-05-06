# 压力测试

apache benchmark(ab)对Nodejs服压测POST请求时出现: apr_poll: The timeout specified has expired (70007) 问题的解决办法

网上找了很多帖子说在参数中加-k (keep-alive) 但都没有用，有一个帖子说这是因为ab对HTTP1.1支持不够好，发送的是1.0的请求，以至于让Nodejs关闭了连接。（说是Nodejs的bug） 
具体原因还有待考究，但问题已经解决。 
解决办法： 
例如原本请求： 

```
ab -c 10000 -n 100 -p ~/post.json -T 'application/json' http://www.chenliujin.com
```

换成： 

```
ab -c 10000 -n 100 -p ~/post.json -H 'Content-Type:application/json' http://www.chenliujin.com
```

即可。

原因可能是因为ab组织POST的头部的时候出现问题？
