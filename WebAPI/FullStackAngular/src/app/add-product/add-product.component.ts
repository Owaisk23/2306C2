import { HttpClientModule, HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-add-product',
  standalone: true,
  imports: [FormsModule, HttpClientModule],
  templateUrl: './add-product.component.html',
  styleUrl: './add-product.component.css'
})
export class AddProductComponent {
  product:any={
   
    name: "",
    description: "",
    price: 0,
    brandId: 0,
  }
  myBrands:any[]=[];
constructor(private http:HttpClient){//dependency injection

}
AddProduct(product:any){
  this.http.post("https://localhost:7280/api/My",product).subscribe((result:any)=>{
  if(result !=null){
    alert("Product added successfully.");
    location.href ="/";
  }
  
  })


}
}
