package controller;

import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.response.AlipayTradePagePayResponse;

public class alipayApplication {
        // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
        public static String app_id = "9021000133602530";
        // 商户私钥，您的PKCS8格式RSA2私钥
        public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCrS7hVerCihM7OYGts/mTsnh6QnlI0KEGke2fNaB/Eu3JOcKuy8YSZUyWX4nERQRLK1iA/S95T6+b63X/U+npnPbVLPJZyXGH0h2il1aFZ7O0uX2SVXz2SKRr6lW0NjdpeXr1V0/DO02XzygPySa/qf+5SOhf6kXL33BAkM5wSuXT+FKUIqBt5llUcHX++ogjQ6k81mNhmonU+xEc/oU1jgqn4T/Ez5hhheVgtG+zTjzD+cAaRSSXVuuB0hBSHjw+JvTJMPP4gJoFdz/p5MnXoPwszFcIUOxENeiFf1ZlqAA1eFK4vXeVpUU32jvxRlF1Veg9oH4bstn1AcDV8CJb/AgMBAAECggEAJqAqbsv9rIf6AjtnveoXY+u7xKyOqMgzFR3mqEDEeR4zhlCNxwoC9nfzUC51hIiB7k8ecmdvOMlHCmaL/sCEfWdCzDZbTmpahENMa6iie56bVQuZqL0TKzQtqzeqoZXNGd6PHx1tfZXZtYFmJmpLSruSR+Rlp9DIde+fjCo/FVFx/wqK/+FwnRw7o6q00VEDDGpxsaE4cYUllXmUUpJqRGXGmT6RJUeEpku6ratOlrcqJqXDMfujo1PCa9ujX2/ktkdt/WzzGuE2oGl7tGDnObAZ6Ggoj2D6l/TNpgGOish5NgQf0yFiJ7euZ9oXG9Q2Ci3mcfg1WRTqjhZIUjjwsQKBgQDXmo87yq4rpp0T+yNLefZYrzPJpwFHkkz9+6mEhhbYTkXtq5uKFwmk8CR/KFsN9BhkKYLu3wbBwFlqwIv2XJ6yme3aqRrcqU6xQdEIcIMMUn8gQN4hoQoWjm+xwDU/Uby/02xtLC/U2xpA2xmSjS3HloiPsdmFGM21RCqVmjHyTQKBgQDLY+1z3wD2HsO/c0F/WI960j5d/Wi5E0r7zqxqlR1yOlesRoR7AJQTlIZ6jJD8N78gTCUVWETbfesc8kMJOQ12kmbPdpjIzs3PCrSgpxOdpdZOXyS6Vq+Bq0tVw3bWHzWManKowXhS2V2BmHQCuyl4tKeNpFmg71gsuAoPkovcewKBgHssaMIPA7waXsjog/x9u/hkd6Cv0XJTKbs8SFdWx7xh0195181nZfId46vloUdyeXDXql7Peau9ORhc0lk4Bs4gVJvEWn1QGI35/PLmXGfwxYHmrUDnIL1MOJGDLqhzCPNKVTp1sQnY9sGwqoZoM4w/+tqlD5ETX4o8XFvFkN1NAoGARJ0wdP+NVnpodQTP2sMonDmjGpgrpQwSJsLBPa+SYH+4JgEgHlLCoZxghaU4IC46Rw4JEJtXl2hyUbCU1t6tYQvgrSqIPm4t1iP5bZ0PrAZPNt84B7jIuojsAEHRrEiZCwa6KZ4jFmgH+HlS4bz8L6FaSRlhtz4nU+a+ViSNFFMCgYABftNDWEArlFivMy4F/SviwRzPFvyAKrJWue0UIjyGEaDyl1XIcbXP0QbWLlFOAWr092x+mS00ShWOy/m8ArKeJ/TCLG+F6yAY9Bi/tKW8EmAfnh1ZIYKwjU3TIY/lwIa/o9QuUCNhTiZLW1IUmHM+ucC5SPUBK9fFWpILRj51PQ==";
        // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
        public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAibDbL3YN++dq4bNTYXRU1yKERBCOALPzz8ZU2SRGezsuh+L3uV9oAhOscaq10JZDcLxrHZy26PM6XBVYG1UZwk3I2P7dIx9mFgztv8DBHR/FBZMGj8k0dwyvWukCzJoxG4JpGsY3QSElnd/h1nSMmjDvR+eHM5W9kxFsKRdeXn84IQ76AO8+1PFtGIc7H2StYtS00PSVvln8vzgxKjd3FKkgf2QRGont1hC+rJIwWpNNjff95Wm4dofu7bJrlaCgKxMz+sZk7+edNRvsswskg+61TJV/n7b1i/1NGW6SmXZMQw9Z7DX99e/9MufQCHXTOfSKacvPod1GWdQmAc70DQIDAQAB";
        // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
        public static String notify_url = "http://localhost:8080/unnamed/notify";
        // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
        public static String return_url = "";
        // 签名方式
        public static String sign_type = "RSA2";
        // 字符编码格式
        public static String charset = "utf-8";
        // 支付宝网关
        public static String gatewayUrl = "https://openapi-sandbox.dl.alipaydev.com/gateway.do";
		// out_trade_no:订单号16位数字的随机数
		// price：价格
		// subject：订单描述
        public static String pay(int out_trade_no,double price,String subject,String url) throws AlipayApiException {
        AlipayClient alipayClient = new DefaultAlipayClient(gatewayUrl,app_id,merchant_private_key,"json",charset,alipay_public_key,sign_type);
        AlipayTradePagePayRequest request = new AlipayTradePagePayRequest();
        request.setNotifyUrl(notify_url);
        // request.setReturnUrl(url+"&parameter=playingId=1")
        request.setReturnUrl(url);
        JSONObject bizContent = new JSONObject();
        bizContent.put("out_trade_no", System.currentTimeMillis()+out_trade_no);
        bizContent.put("total_amount", price);
        bizContent.put("subject", subject);
        bizContent.put("product_code", "FAST_INSTANT_TRADE_PAY");
        request.setBizContent(bizContent.toString());
        System.out.println("bizContent: "+ bizContent.toString());
        AlipayTradePagePayResponse response = alipayClient.pageExecute(request);
        String form ="";
        if(response.isSuccess()){
            System.out.println("调用成功");
            form = response.getBody();
        } else {
            System.out.println("调用失败");
        }
        return form;
    }
}
