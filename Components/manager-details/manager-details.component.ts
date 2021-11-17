import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-manager-details',
  templateUrl: './manager-details.component.html',
  styleUrls: ['./manager-details.component.scss']
})
export class ManagerDetailsComponent implements OnInit {

  manager: any[] =[
    {
      managerName: 'Arun Kumar Mishra',
      sportName: 'Cricket',
      hiredate: new Date('12-3-2021')
    }
  ]
  constructor() { }

  ngOnInit(): void {
  }

}
