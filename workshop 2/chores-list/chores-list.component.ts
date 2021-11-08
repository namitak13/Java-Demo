import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-chores-list',
  templateUrl: './chores-list.component.html',
  styleUrls: ['./chores-list.component.scss']
})
export class ChoresListComponent implements OnInit {


  chores:string[] = [];

  finishedChores:string[] = ['cooked food' ];

  yesterdayChores:string[] = ['Empty Dishwasher' , 'Start Lauchcode prep work' , 'Buy groceries'];

  todayChores:string[] = ['Load Dishwasher' , 'Finish Launchcode prep work' , 'Buy The groceries you forgot'];
  
  tomorrowChores:string[] = ['Empty Dishwasher AGAIN' , 'play with Launchcode practise code' , 'Groceries AGAIN'];

  imageURL:string = '../assets/icecream.jpg';

  constructor() { }

  ngOnInit(): void {
  }

}
