//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Baby.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Problem
    {
        public int ID { get; set; }
        public string Questions { get; set; }
        public System.DateTime Usertime { get; set; }
        public string answers { get; set; }
        public System.DateTime time { get; set; }
        public int state { get; set; }
        public bool Isdelete { get; set; }
        public int UserInfoID { get; set; }
    
        public virtual UserInfo UserInfo { get; set; }
    }
}
