using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Table("QuestionOption")]
public partial class QuestionOption
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    [Column("QuestionID")]
    public int QuestionId { get; set; }

    [Column("OptionID")]
    public int OptionId { get; set; }

    [ForeignKey("OptionId")]
    [InverseProperty("QuestionOptions")]
    public virtual Option Option { get; set; } = null!;

    [ForeignKey("QuestionId")]
    [InverseProperty("QuestionOptions")]
    public virtual Question Question { get; set; } = null!;
}
