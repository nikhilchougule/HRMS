using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Table("Status")]
public partial class Status
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    [StringLength(300)]
    public string? Name { get; set; }

    [InverseProperty("Status")]
    public virtual ICollection<Test> Tests { get; set; } = new List<Test>();
}
