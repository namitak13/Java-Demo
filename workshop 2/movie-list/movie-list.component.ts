import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-movie-list',
  templateUrl: './movie-list.component.html',
  styleUrls: ['./movie-list.component.scss']
})
export class MovieListComponent implements OnInit {

  //movies:string[] = ['The Manchurian Candidate' , 'Ocean 8' , 'The incredibles' , 'Hidden figures'];

  movies : any= [
    {
      id : 1 ,
      name : "The manchurian Candidate" ,
      image : "../assets/manchurian.jfif",
      description : "description of The manchurian Candidate" 
    } ,
    {
      id : 2 ,
      name : "Ocean 8" ,
      image : "../assets/ocean8.jpg",
      description : "description of Ocean 8" 
    }
  ];

  watchedMovies: any = [

    {
      id : 3 ,
      name : "The Incredibles" ,
      image : "../assets/incredibles.jpeg",
      description : "description of The incredibles" 
    } ,

   ];

  constructor() { }

  ngOnInit(): void {
  }

  add(movie : any)
  { 
   this.movies = this.movies.filter( (e: any) => e != movie);

   this.watchedMovies.push(movie);
  }
}
