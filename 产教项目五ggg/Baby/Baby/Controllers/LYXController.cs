using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Xml;
using WeiXinGongZ.Wechat;

namespace Baby.Controllers
{
    public class LYXController : Controller
    {
        #region 创建公众号的首页
        /// <summary>
        /// 首页
        /// </summary>
        /// <returns></returns>
        // GET: LYX
        public ActionResult Index()
        {
            return View();
        }
        #endregion
        #region 判断是不是微信发来的请求
        /// <summary>
        /// 判断是不是微信发来的请求
        /// </summary>
        /// <param name="signature"></param>
        /// <param name="timestamp"></param>
        /// <param name="nonce"></param>
        /// <param name="echostr"></param>
        /// <returns></returns>
        [HttpGet]
        public ActionResult Conn(string signature, string timestamp, string nonce, string echostr)
        {
            //确定是微信发给我们的请求过后 原封不动返回echostr
            //字典排序
            string[] ArrTmp = { "xxxx", timestamp, nonce };
            Array.Sort(ArrTmp);
            //组合成一个字符串 进行sha1加密
            string tmpStr = string.Join("", ArrTmp);
            tmpStr = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tmpStr, "SHA1");
            tmpStr = tmpStr.ToLower();
            //加密后的字符串与signature进行比对
            if (tmpStr == signature)
            {
                //微信发来的请求
                return Content(echostr);
            }
            else
            {
                //不是微信 
                return Content("滚");
            }
        }
        #endregion
        #region 得到access_token
        /// <summary>
        /// 得到access_token
        /// </summary>
        /// <returns></returns>
        public ActionResult access_token()
        {
            WechartTool w = new WechartTool();
            return Content(w.GetToken());
        }
        #endregion
        #region 创建菜单
        public ActionResult CreatMenu()
        {
            WechartTool w = new WechartTool();
            return Content(w.CreateMenu().ToString());
        }
        #endregion
        #region 注册
        public ActionResult register()
        {

            return View();
        }
        #endregion


        [HttpPost]
        public ActionResult Conn()
        {
            //微信将以数据流的形式封装在request对象中
            var stream = Request.InputStream;

            //将数据流转化为byte数组
            byte[] bytes = new byte[stream.Length];
            stream.Read(bytes, 0, Convert.ToInt32(stream.Length));
            //将byte数组转化为字符串(xml)
            string str = Encoding.UTF8.GetString(bytes);

            XmlDocument doc = new XmlDocument();
            doc.LoadXml(str);

            string type = doc.SelectSingleNode("xml/MsgType").InnerText;
            string home = doc.SelectSingleNode("xml/ToUserName").InnerText;
            string user = doc.SelectSingleNode("xml/FromUserName").InnerText;
            //被动回复用户信息
            if (type == "text")
            {
                //接收用户信息
                string content = doc.SelectSingleNode("xml/Content").InnerText;
                //回复消息给用户
                string mess = System.IO.File.ReadAllText(Server.MapPath("/Wechat/Message.txt"));
                mess = mess.Replace("{0}", user);
                mess = mess.Replace("{1}", home);
                mess = mess.Replace("{2}", GetCreateTime().ToString());
                mess = mess.Replace("{3}", "欢迎，你发送的是：" + content);
                Response.ContentEncoding = Encoding.UTF8;
                return Content(mess);

            }
            //被关注时回复的消息
            else if (type == "event")
            {
                //关注时发送的消息
                if (doc.SelectSingleNode("xml/Event").InnerText == "subscribe")
                {

                    //回复消息给用户
                    string mess = System.IO.File.ReadAllText(Server.MapPath("/Wechat/Message.txt"));
                    mess = mess.Replace("{0}", user);
                    mess = mess.Replace("{1}", home);
                    mess = mess.Replace("{2}", GetCreateTime().ToString());
                    mess = mess.Replace("{3}", "亲爱的宝爸宝妈，欢迎关注宝宝亲！");
                    return Content(mess);
                }
                //回复图文消息
                else if (doc.SelectSingleNode("xml/EventKey").InnerText == "dong")
                {
                    WechartTool w = new WechartTool();
                    var id = w.CreateContent();
            

                }
                else if (doc.SelectSingleNode("xml/EventKey").InnerText == "zan")
                {
                    string mess = System.IO.File.ReadAllText(Server.MapPath("/Wechat/Message.txt"));
                    mess = mess.Replace("{0}", user);
                    mess = mess.Replace("{1}", home);
                    mess = mess.Replace("{2}", GetCreateTime().ToString());
                    mess = mess.Replace("{3}", "你的每一个赞都是我们发展的动力，爱你哦！/:heart");
                    return Content(mess);
                }
            }

            return Content("success");

        }

        private long GetCreateTime()//创建时间戳
        {
            DateTime dateStart = new DateTime(1970, 1, 1);//格林威治时间1970，1，1，0，0，0
            return (long)(DateTime.Now - dateStart).TotalSeconds;
        }


    }
}