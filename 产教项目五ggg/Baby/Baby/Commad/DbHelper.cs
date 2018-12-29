using Baby.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;

namespace Baby.Commad
{
    public class DbHelper
    {
        public static BabyDBEntities Ceate() {
            BabyDBEntities db = CallContext.GetData("ef") as BabyDBEntities;
            if (db==null)
            {
                db = new BabyDBEntities();
                CallContext.SetData("ef", db);
            }
            return db;

        }
    }
}