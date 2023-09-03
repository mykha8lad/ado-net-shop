using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdoSqlBrands.DAL.Entity;

public record Brands
{
    public Guid id { get; set; }
    public string name { get; set; } = null!;
    public string description { get; set; } = null!;
    public int country_id { get; set; }
    public string website { get; set; } = null!;
    public string date { get; set; } = null!;
    public string founded_date { get; set; } = null!;
    public int logo_id { get; set; }
}
