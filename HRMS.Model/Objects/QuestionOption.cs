using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Keyless]
[Table("QuestionOption")]
public partial class QuestionOption
{
    [Column("QuestionID")]
    public int QuestionId { get; set; }

    [Column("OptionID")]
    public int OptionId { get; set; }

    [ForeignKey("OptionId")]
    public virtual Option Option { get; set; } = null!;

    [ForeignKey("QuestionId")]
    public virtual Question Question { get; set; } = null!;
}
