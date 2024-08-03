import { Component } from '@angular/core';

@Component({
  selector: 'app-user-profile',
  standalone: true,
  imports: [],
  templateUrl: './user-profile.component.html',
  styleUrl: './user-profile.component.css'
})
export class UserProfileComponent {
  name= "Owais Ahmed Khan";
  designation= "Software Developer";
  salary = 200000;
  isDisabled = true
}
