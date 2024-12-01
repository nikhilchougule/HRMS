using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Table("Option")]
public partial class Option
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    [Column("QuestionID")]
    public int QuestionId { get; set; }

    [ForeignKey("QuestionId")]
    [InverseProperty("Options")]
    public virtual Question Question { get; set; } = null!;

    [InverseProperty("Option")]
    public virtual ICollection<TestDetailQuestionOption> TestDetailQuestionOptions { get; set; } = new List<TestDetailQuestionOption>();
}
