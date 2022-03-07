using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Bosphorus.Entity
{
    public class Message
    {
        public int MessageID { get; set; }
        public string MessageSender { get; set; }
        public string MessageReceiver { get; set; }
        public string MessageSubject { get; set; }
        public DateTime MessageDate { get; set; }
        public string MessageBody { get; set; }
    }
}
