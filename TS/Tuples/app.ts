// Tuple types have advantages that you can accurately describe the type of an array

var tuple: [number, string] = [1, "Bob"];
var scndElement = tuple[1]
// console.log(scndElement)
console.log(tuple[1])

// In JS
const failingResponse = ["Non Found", 404]
//  In TS
const passingResponse: [string, number] = ["{}", 200]

if(passingResponse[1] === 200){
    const localInfo = JSON.parse(passingResponse[0])
    console.log(localInfo)
}


type staffAccount = [number, string, string, string?]

const staff: staffAccount[] = [
    [0, "Hassan", "hassan@gmail.com", "CAH"],
    [1, "Ali", "ali@gmail.com"],
    [2, "Saad", "saad@gmail.com"],
    [3, "Wajeeha", "wajeeha@gmail.com"]
];

type PaySTubs = [staffAccount, ...number[]];

const payStubs: PaySTubs[] = [
    [staff[0], 300],
    [staff[1], 250, 300],
    [staff[2], 300, 400, 250],
];

const monthOnePayments = payStubs[0][1] + payStubs[1][1] + payStubs[2][1]
const monthTwoPayments = payStubs[1][2] + payStubs[2][2];
const monthThreePayments = payStubs[2][2];

console.log(monthOnePayments)
console.log(monthTwoPayments)
console.log(monthThreePayments)

