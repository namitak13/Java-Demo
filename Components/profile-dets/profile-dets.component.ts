import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { UserService } from 'src/app/services/user.service';

@Component({
  selector: 'app-profile-dets',
  templateUrl: './profile-dets.component.html',
  styleUrls: ['./profile-dets.component.scss']
})
export class ProfileDetsComponent implements OnInit {

  user:any;
  userId:any;
  constructor(private _activateRoute:ActivatedRoute,private userService:UserService) { }

  ngOnInit(): void {
    this._activateRoute.params.subscribe(data=>{
      this.userId = 1;  //data.userId
    });
    this.userService.getUserById(this.userId).subscribe(data=>{
      this.user = data;
    })
    console.log(this.user);
  }

}
