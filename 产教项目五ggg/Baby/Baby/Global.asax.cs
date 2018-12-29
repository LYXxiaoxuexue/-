using Baby.Commad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace Baby
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            log4net.Config.XmlConfigurator.Configure();

            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            //开一个线程池
            ThreadPool.QueueUserWorkItem(u =>
            {     
                //死循环
                while (true)
                {
                    if (MyError.MyserrorQueue.Count > 0)
                    {
                        log4net.ILog myLogger = log4net.LogManager.GetLogger("xxx");
                        //出队
                        Exception ex = MyError.MyserrorQueue.Dequeue();
                        myLogger.Error(ex.ToString());
                        //写入文件
                        //System.IO.File.AppendAllText(p,ex.ToString()+"\r\n");
                    }
                    else
                    {
                        //休息200毫秒
                        Thread.Sleep(200);
                    }
                    Thread.Sleep(200);
                }
            });
        }
    }
}
