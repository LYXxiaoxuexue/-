using DotNet.Utilities;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace WeiXinGongZ.Wechat
{
    public class WechartTool
    {
        public static string Acc_Token;
        public static DateTime time;
        /// <summary>
        /// 创建请求
        /// </summary>
        /// <returns></returns>
        public string GetToken() {
            if (string.IsNullOrEmpty(Acc_Token))
            {
                var ken = HttpHelper.HttpGet("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wxc2ba454406872649&secret=ffcb03d77aa608c052383265882032d8", "");
                //第一种建类
                //GetAcc json= JsonConvert.DeserializeObject<GetAcc>(ken) ;
                // if (ken.Contains("errmsg"))
                // {
                //     //失败
                //     return Content(json.errcode);
                // }
                // else
                // {
                //     //成功
                //     return Content(json.access_token);
                // }
                //第一种
                JObject json = JObject.Parse(ken);
                Acc_Token = json["access_token"].ToString();
                time = DateTime.Now;
            }
            else
            {
                if (DateTime.Now>time.AddMinutes(110))
                {
                    var ken = HttpHelper.HttpGet("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx32d83246e592d506&secret=56dd738b97655cb49dbb9969fae96446", "");
                    JObject json = JObject.Parse(ken);
                    Acc_Token = json["access_token"].ToString();
                    time = DateTime.Now;
                }
            }
            return Acc_Token;
        }
        public string CreateMenu() {

            string url = " https://api.weixin.qq.com/cgi-bin/menu/create?access_token="+Acc_Token;
            string data = File.ReadAllText(HttpContext.Current.Server.MapPath("/Wechat/Menu.txt"));
            string str= HttpHelper.HttpPost(url,data);
            JObject obj = JObject.Parse(str);
            return obj["errmsg"].ToString();

         }
        public string CreateContent() {

            string url = "https://api.weixin.qq.com/cgi-bin/material/add_news?access_token="+Acc_Token;
            string data = File.ReadAllText(HttpContext.Current.Server.MapPath("/Wechat/CreateContent.txt"));
            string str = HttpHelper.HttpPost(url, data);
            JObject obj = JObject.Parse(str);
            return obj["errmsg"].ToString();
        }
          
    }
}