using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Baby.Controllers
{
    public class MrliController : Controller
    {
        // GET: Mrli
        public int MyProperty { get; set; }

        #region 个人中心主页
        public ActionResult Index()
        {
            return View();
        }
        #endregion
        #region 个人中心 个人信息
        public ActionResult information()
        {
            //var list=Session["user"];
           // var list=
            return View();
        }
        #endregion
        #region 个人中心  安全设置
        public ActionResult safety()
        {
            return View();
        }
        #endregion
        #region 个人中心  修改绑定手机
        public ActionResult bindphone()
        {
            return View();
        }
        #endregion
        #region 个人中心  修改登录密码
        public ActionResult passwordpage()
        {
            return View();
        }
        #endregion
        #region 个人中心  实名认证
        public ActionResult idcard()
        {
            return View();
        }
        #endregion
        #region 个人中心  用户地址
        public ActionResult address()
        {
            return View();
        }
        #endregion
        #region 个人中心  所有订单
        public ActionResult order()
        {
            return View();
        }
        #endregion



    }
}