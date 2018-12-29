using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Baby.Commad
{
        public class MyError : HandleErrorAttribute
        {
            //声明队列
            public static Queue<Exception> MyserrorQueue = new Queue<Exception>();
            public override void OnException(ExceptionContext filterContext)
            {
                //入队
                MyserrorQueue.Enqueue(filterContext.Exception);
                //跳转到错误页
                filterContext.HttpContext.Response.Redirect("/Home/Cuowu");
                base.OnException(filterContext);
            }
        }
    
}