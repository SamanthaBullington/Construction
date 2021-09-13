using System.ComponentModel.DataAnnotations; 
 
namespace Constuction.Models
{
  public class Job
  {
    public int Id { get; set; }
    public int ContractorId { get; set; }
    public int CompanyId { get; set; }
  }
    }