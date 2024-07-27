console.log("Hello in Typescript!!")

// let userName: string = "Abdullah Nasir";

// console.log(userName);
// console.log(typeof userName);
// console.log(userName.toUpperCase());
// console.log(userName.toLowerCase());


// let userAge: number = 22;
// console.log(userAge)

// let userEmail: string = "abdullah123@gmail.com"

// let userDetails = `Username is ${userName} UserAge is ${userAge}
// and UserEmail is ${userEmail}`;
// console.log(userDetails)

// null=0       true=1 and false=0

// let userPost = null;

// if(userPost){
//     console.log("Null true huta hai")
// }else{
//     console.log("Null false huta hai")
// }

// let userPass = undefined;
// if(userPass){
//     console.log("Undefined true huta hai")
// }else{
//     console.log("Undefined false huta hai")
// }

// Arrays
// let stdMarks: number[] = [88, 95, 78, 100, 90];

// console.log(stdMarks)

// let stdNames: string[] = ["Ali", "Usman", "Abbass", "Imran"];
// // console.log(stdNames)
// stdNames.forEach((val) => {
//     console.log(val)
// })

// let stds = stdNames.map((val) => {
//     console.log(val)
//     return val.toUpperCase()
// })
// console.log(stds)

// Object
// type any
// let product: any = {
//     prodName: "IPhone 14 Pro Max",
//     prodColor: "Gold",
//     prodPrice: 355000,
//     prodStock: true
// }

// console.log(product)
// console.log(product.prodName)
// console.log(product.prodColor)

// let student: object = {
//     stdName: "Ammad Ali",
//     stdMarks: 95,
//     stdIsActive: true
// }

// console.log(student)

// let student: {
//     stdName: string;
//     stdMarks: number;
//     stdIsActive: boolean;
// } = {
//     stdName: "Abdullad",
//     stdMarks: 95,
//     stdIsActive: true
// };

// console.log(student)

// let mixed: (string | number) [];

// mixed = ["apple", "grapes", "orange", 456  , 545];

// mixed.forEach((val) => {
//     if(typeof val == "string"){
//         console.log(val.toUpperCase())
//     }else{
//         console.log(val.toFixed(2))
//     }
// });

// console.log(mixed)

// let teacher: {name: string, exp: number } = {
//     name: "Owais",
//     exp: 5
// }
 
// // Aliased Object Type 
// type Student = {
//     name: string,
//     age?: number
// }

// let stds: Student = {
//     name:"Wajeeha",
//     age: 23
// }
// console.log(stds["name"])
// console.log(stds.age)

// Interfaces

// interface Manager {
//     name: string,
//     salary?: number
// }

// let storeManager: Manager = {
//     name: "Hassan",
//     salary: 450000
// }

// Intersection types

interface Teacher {
    teacher_Id: number,
    teacher_Name: string
}

interface Student {
    stdId: number,
    stdName: string
}

type intersected_types = Teacher & Student;

let obj1: intersected_types = {
    stdId: 7666,
    stdName: "Saad",
    teacher_Id: 555,
    teacher_Name: "Afzal"
}

console.log(obj1["teacher_Name"])
console.log(obj1.stdName)















































