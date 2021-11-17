import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-sports-details',
  templateUrl: './sports-details.component.html',
  styleUrls: ['./sports-details.component.scss']
})
export class SportsDetailsComponent implements OnInit {

  sports: any[]=[{
    image: '',
    sportName: 'Football',
    managerAssigned: 'John',
    category: 'outdoor'
  }]
  constructor() { }

  ngOnInit(): void {
  }

}
