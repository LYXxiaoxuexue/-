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
    
    public partial class News_picture
    {
        public int ID { get; set; }
        public string NewDescribe { get; set; }
        public string NewpictureUrl { get; set; }
        public System.DateTime Createtime { get; set; }
        public bool Isdelete { get; set; }
        public int NewscontentID { get; set; }
    
        public virtual News_content News_content { get; set; }
    }
}
