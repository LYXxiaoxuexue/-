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
    
    public partial class UserAddress
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public UserAddress()
        {
            this.Order = new HashSet<Order>();
        }
    
        public int ID { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public bool Default { get; set; }
        public System.DateTime Createtime { get; set; }
        public bool Isdelete { get; set; }
        public int UserInfoID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Order { get; set; }
        public virtual UserInfo UserInfo { get; set; }
    }
}
