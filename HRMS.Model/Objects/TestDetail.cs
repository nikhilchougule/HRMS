using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Table("TestDetail")]
public partial class TestDetail
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    [Column("TestID")]
    public int TestId { get; set; }

    [Column("TestCategoryID")]
    public int TestCategoryId { get; set; }

    public double TimeOut { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? StartTime { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? EndTime { get; set; }

    public double? Score { get; set; }

    [Column("TestResultID")]
    public int TestResultId { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? CreatedDate { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? UpdatedDate { get; set; }

    [ForeignKey("TestId")]
    [InverseProperty("TestDetails")]
    public virtual Test Test { get; set; } = null!;

    [ForeignKey("TestCategoryId")]
    [InverseProperty("TestDetails")]
    public virtual TestCategory TestCategory { get; set; } = null!;

    [InverseProperty("TestDetail")]
    public virtual ICollection<TestDetailQuestionOption> TestDetailQuestionOptions { get; set; } = new List<TestDetailQuestionOption>();

    [ForeignKey("TestResultId")]
    [InverseProperty("TestDetails")]
    public virtual TestResult TestResult { get; set; } = null!;
}
