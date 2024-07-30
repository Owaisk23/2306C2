// Tuple types have advantages that you can accurately describe the type of an array
var tuple = [1, "Bob"];
var scndElement = tuple[1];
// console.log(scndElement)
console.log(tuple[1]);
// In JS
var failingResponse = ["Non Found", 404];
//  In TS
var passingResponse = ["{}", 200];
if (passingResponse[1] === 200) {
    var localInfo = JSON.parse(passingResponse[0]);
    console.log(localInfo);
}
var staff = [
    [0, "Hassan", "hassan@gmail.com", "CAH"],
    [1, "Ali", "ali@gmail.com"],
    [2, "Saad", "saad@gmail.com"],
    [3, "Wajeeha", "wajeeha@gmail.com"]
];
var payStubs = [
    [staff[0], 300],
    [staff[1], 250, 300],
    [staff[2], 300, 400, 250],
];
var monthOnePayments = payStubs[0][1] + payStubs[1][1] + payStubs[2][1];
var monthTwoPayments = payStubs[1][2] + payStubs[2][2];
var monthThreePayments = payStubs[2][2];
console.log(monthOnePayments);
console.log(monthTwoPayments);
console.log(monthThreePayments);
