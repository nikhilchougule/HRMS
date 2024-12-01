using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Table("TestDetailQuestionOption")]
public partial class TestDetailQuestionOption
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    [Column("TestDetailID")]
    public int TestDetailId { get; set; }

    [Column("QuestionID")]
    public int QuestionId { get; set; }

    [Column("OptionID")]
    public int? OptionId { get; set; }

    [ForeignKey("OptionId")]
    [InverseProperty("TestDetailQuestionOptions")]
    public virtual Option? Option { get; set; }

    [ForeignKey("QuestionId")]
    [InverseProperty("TestDetailQuestionOptions")]
    public virtual Question Question { get; set; } = null!;

    [ForeignKey("TestDetailId")]
    [InverseProperty("TestDetailQuestionOptions")]
    public virtual TestDetail TestDetail { get; set; } = null!;
}
