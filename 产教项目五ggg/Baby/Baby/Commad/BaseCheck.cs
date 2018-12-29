using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Baby.Commad
{
    public class BaseCheck:ActionFilterAttribute
    {
        /// <summary>
        /// 打标签的判断属性
        /// </summary>
        /// <param name="filterContext"></param>
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            
            if (filterContext.HttpContext.Session["user"]==null)
            {
                filterContext.Result = new RedirectResult("/Admin/LoginPage");
            }
            base.OnActionExecuting(filterContext);
        }
    }
}