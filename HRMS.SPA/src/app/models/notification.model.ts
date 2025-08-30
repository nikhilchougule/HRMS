export class NotificationMessage {
  ID: number;
  Message: string;
  TotalCount: number = 0;
  NewCount: number = 0;

  constructor(ID: number, Message: string, TotalCount: number, NewCount: number) {
    this.ID = ID;
    this.Message = Message;
    this.TotalCount = TotalCount;
    this.NewCount = NewCount;
  }

}
