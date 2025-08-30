import { HttpClient } from '@angular/common/http';
import { Injectable, signal } from '@angular/core';
import { Observable } from 'rxjs';
import { ApiURL, HttpOptions } from '../../config';
import { User } from '../../models/user.model';
import { NotificationMessage } from '../../models/notification.model';
//import { tickets } from '../../pages/users/usersData';

@Injectable({
  providedIn: 'root',
})
export class UserService {

  public deleteUser(id: number): Observable<User[]> {
    return this.http.get<[]>(`${ApiURL}/api/User/DeleteUser/${id}`, HttpOptions);
  }

  public getAllUsers(userID: number): Observable<User[]> {
    return this.http.get<User[]>(ApiURL + '/api/User/GetAllUsers/'+userID);
  }

  public getAllApplicants(): Observable<User[]> {
    return this.http.get<User[]>(ApiURL + '/api/User/GetAllApplicants');
  }

  public getAllNotifications(userID: number): Observable<NotificationMessage[]> {
    return this.http.get<NotificationMessage[]>(ApiURL + '/api/User/GetAllNotifications/' + userID);
  }

  public updateUser(updateUserModel:any): Observable<User[]> {
    return this.http.post<[]>(ApiURL + '/api/User/UpdateUser', JSON.stringify(updateUserModel), HttpOptions);
  }

  public createUser(updateUserModel: any): Observable<User[]> {
    return this.http.post<[]>(ApiURL + '/api/User/CreateUser', JSON.stringify(updateUserModel), HttpOptions);
  }

  constructor(private http: HttpClient) {}

  addTicket(ticket: User): void {
    const today = new Date();

    // Get the current list of tickets
   // const currentTickets = this.ticketsData();

    // Find the highest ID currently in use
    //const maxId =
    //  currentTickets.length > 0
    //    ? Math.max(...currentTickets.map((t) => t.ID))
    //    : 0; // Default to 0 if no tickets exist

    //const newTicket: User = {
    //  ID: maxId + 1, // Set new ID
    //  Name: ticket.Name,
    //  Email: ticket.Email,
    //  MobileNumber: ticket.MobileNumber,
    //  CreatedDate: today.toISOString().split('T')[0],
    //  UpdatedDate: today.toISOString().split('T')[0],
    //  IsActive: true,
    //  IsApproved: true,
    //  UserProfile: ticket.UserProfile,
    //  Skills: ticket.Skills,
    //  imgSrc: '/assets/images/profile/user-1.jpg',
    //  Roles: ticket.Roles,
    //  Role: ticket.Role,
    //};

    //// Update the tickets data with the new ticket
    //this.ticketsData.update((currentTickets) => [...currentTickets, newTicket]);
  }

  //updateTicket(updatedTicket: User): void {
  //  this.ticketsData.update((currentTickets) =>
  //    currentTickets.map((ticket) =>
  //      ticket.ID === updatedTicket.ID ? updatedTicket : ticket
  //    )
  //  );
  //}

  //deleteTicket(id: number): void {
  //  this.ticketsData.update((currentTickets) =>
  //    currentTickets.filter((ticket) => ticket.ID !== id)
  //  );
  //}
}
