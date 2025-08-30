using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Table("QuestionType")]
public partial class QuestionType
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    [StringLength(300)]
    public string Name { get; set; } = null!;

    [InverseProperty("QuestionType")]
    public virtual ICollection<Question> Questions { get; set; } = new List<Question>();
}
