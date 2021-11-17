import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-user-details',
  templateUrl: './user-details.component.html',
  styleUrls: ['./user-details.component.scss']
})
export class UserDetailsComponent implements OnInit {

  user: any[] =[{
    userName: 'John',
    sportName: 'Football',
    batchName: 'Morning Batch',
    timming: new Date,
    days: 20,
    enrollStatus: 'active'
  }]
  constructor() { }

  ngOnInit(): void {
  }

}
