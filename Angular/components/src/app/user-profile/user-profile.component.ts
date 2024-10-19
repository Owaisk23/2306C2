import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { Input, booleanAttribute, Component, numberAttribute,Output, EventEmitter  } from '@angular/core';
import { User } from '../models/user'

@Component({
  selector: 'app-user-profile',
  standalone: true,
  imports: [FormsModule, CommonModule],
  templateUrl: './user-profile.component.html',
  styleUrl: './user-profile.component.css'
})
export class UserProfileComponent {
  @Input({alias:"userName"}) name = "";
  @Input({transform:booleanAttribute}) isSingle!:boolean;
  @Input({transform: numberAttribute}) salary!:number;

  @Output() myEvent = new EventEmitter<User>()
  sendData(){
    this.myEvent.emit({name:this.name, newSalary: 25000})
  }

  userName = "Owais Ahmed Khan";
  newSalary = 56000;
  designation = "Software Developer";
  isDisabled= true;
  inputVal = "test";
  

  // onChange(){
  //   console.log("Called Function");
  // }

  // onChange(e:Event){
  //   const value = (e.target as HTMLInputElement).value;
  //   console.log(value);
  // }

  // onChange(e:Event){
  //   const value = (e.target as HTMLInputElement).value;
  //   this.inputVal = value;
  // }

}
