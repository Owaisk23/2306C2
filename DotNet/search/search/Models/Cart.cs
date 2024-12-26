using System;
using System.Collections.Generic;

namespace search.Models;

public partial class Cart
{
    public int CartId { get; set; }

    public int? ItemId { get; set; }

    public int? UserId { get; set; }

    public int? Qty { get; set; }

    public int? Price { get; set; }

    public int? Total { get; set; }

    public virtual Item? Item { get; set; }

    public virtual User? User { get; set; }
}
