using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Baby.Controllers
{
    public class AdminController : Controller
    {
        /// <summary>
        /// 登录页面
        /// </summary>
        /// <returns></returns>
        // GET: Admin
        public ActionResult LoginPage()
        {
            return View();
        }
    }
}