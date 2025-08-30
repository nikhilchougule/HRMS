using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Table("TestCategory")]
public partial class TestCategory
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    [StringLength(300)]
    public string Name { get; set; } = null!;

    [InverseProperty("TestCategory")]
    public virtual ICollection<Question> Questions { get; set; } = new List<Question>();

    [InverseProperty("TestCategory")]
    public virtual ICollection<TestDetail> TestDetails { get; set; } = new List<TestDetail>();
}
