import { HttpClientModule, HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-products',
  standalone: true,
  imports: [RouterLink, HttpClientModule], // Add HttpClientModule here
  templateUrl: './products.component.html',
  styleUrl: './products.component.css',
})
export class ProductsComponent {
  myProducts: any[] = [];

  constructor(private http: HttpClient) {
    this.getProduct();
  }

  getProduct() {
    this.http
      .get('https://localhost:7280/api/My') // Fixed typo in URL ('hhttps' -> 'https')
      .subscribe((result: any) => {
        this.myProducts = result;
        console.log(result);
      });
  }

  DeletProduct(item: any) {
    this.http
      .delete('https://localhost:7280/api/My?id=' + item.id)
      .subscribe((result: any) => {
        alert('Successfully deleted');
        this.getProduct();
        console.log(result);
      });
  }
}
