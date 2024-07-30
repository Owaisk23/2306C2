// enum Color {Red, Green, Blue};
// var c: Color = Color.Blue;
// console.log(c)
// enum Color1 {Red = 1, Green, Blue}
//              // 0       1      2 
//             // 1        2       3
// var colorName: string = Color1[3]
// console.log(colorName)
// assigning number of your choice to enum
var Color2;
(function (Color2) {
    Color2[Color2["Red"] = 2] = "Red";
    Color2[Color2["Green"] = 4] = "Green";
    Color2[Color2["Blue"] = 7] = "Blue";
    Color2[Color2["Cyan"] = 8] = "Cyan";
})(Color2 || (Color2 = {}));
var colorName = Color2[8];
console.log(colorName);
