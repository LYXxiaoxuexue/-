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
    
    public partial class Orderlist
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Orderlist()
        {
            this.Evaluation = new HashSet<Evaluation>();
        }
    
        public int ID { get; set; }
        public string OrderId { get; set; }
        public int Quantity { get; set; }
        public double UnitPrice { get; set; }
        public int state { get; set; }
        public System.DateTime Createtime { get; set; }
        public bool Isdelete { get; set; }
        public string Order_OrderId { get; set; }
        public int CommoditylistID { get; set; }
    
        public virtual Commoditylist Commoditylist { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Evaluation> Evaluation { get; set; }
    }
}
