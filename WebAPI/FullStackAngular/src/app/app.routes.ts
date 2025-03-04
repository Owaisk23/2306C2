import { Routes } from '@angular/router';
import {ProductsComponent} from './products/products.component'
import {AddProductComponent} from './add-product/add-product.component'
import {EditProductComponent} from './edit-product/edit-product.component'

export const routes: Routes = [
    {
        path:"",
        component:ProductsComponent
    },
    {
        path:"addproduct",
        component:AddProductComponent
    }
    ,
    {
        path:"editproduct/:id",
        component:EditProductComponent
    }
];
