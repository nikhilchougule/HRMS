using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRMS.ViewModel.Notification
{
    public class NotificationViewModel
    {
        public int ID { get; set; }
        public int UserID { get; set; }
        public int NotificationTypeID { get; set; }
        public string? NotificationType { get; set; }
        public string? URL { get; set; }
        public string? Message { get; set; }
        public string? SubMessage { get; set; }
        public int TotalCount { get; set; }
        public int NewCount { get; set; }
    }
}
