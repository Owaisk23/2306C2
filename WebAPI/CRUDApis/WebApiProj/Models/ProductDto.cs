using System;
using System.Collections.Generic;

namespace WebApiProj.Models;

public partial class ProductDTO
{
    public int? Id { get; set; }
    public string Name { get; set; } = null!;

    public string Description { get; set; } = null!;

    public int Price { get; set; }
}
