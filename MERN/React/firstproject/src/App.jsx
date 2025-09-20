import { useState } from "react";
import Bulb from "./components/Bulb";
import Cards from "./components/Cards";
import Footer from "./components/Footer";
import MyName from "./components/MyName";
import Navbar from "./components/Navbar";
import Todo from "./components/Todo";
import ApiFetch from "./components/ApiFetch";

function App() {
  let userData = [
    {
      name: "Owais Ahmed Khan",
      profession: "Software Developer"
    },
    {
      name: "Javeria",
      profession: "Doctor"
    },
    {
      name: "M Ali",
      profession: "Gamer"
    },
    {
      name: "Hanzala",
      profession: "Jweller"
    },
    {
      name: "Taha",
      profession: "Computer Scientist"
    }

  ]

  let cardData = [
    {
      image: "https://fastly.picsum.photos/id/350/200/300.jpg?hmac=lAscVz0d1YWlAi5moOrwmJ0E7KNtxtLyHkE2pq3qnh8",
      title: "Monal Restaurant",
      description: "This is a description for Monal Restaurant."
    },
    {
      image: "https://fastly.picsum.photos/id/688/200/301.jpg?hmac=_OXmrTKJm4YNoq-9b2m2pUr7JW8kWnOca1Qb0HcPiqg",
      title: "Murree Hill Top",
      description: "This is a description for Murree Hill Top."
    }
  ];

  //states
  let [count, setCount] = useState(100);

  let [user, setUser] = useState({
    name: "Owais Ahmed Khan",
    profession: "Software Developer"
  })

  // let [user, setUser] = useState(["Owais Ahmed Khan", "Javeria", "M Ali"])
  //functions
  const handleIncremtent = () => {
    setCount(count + 1);
    // count++
    console.log(count);
    
  }

  const updateUser = () => {
    setUser({...user, profession: "Full Stack Developer"});
    // console.log(user);
  }

  return (
    <>
      <Navbar />
      <h1 className="heading">Hello in React JS</h1>
      <h2>{count}</h2>
      <button className="btn btn-primary" onClick={handleIncremtent}>Increment({count})</button>
      
      <h2>Name: {user.name} Profession: {user.profession}</h2>
      <button className="btn btn-primary" onClick={updateUser}>Update User</button>
      {/* <MyName name={"Owais Ahmed Khan"} profession={"Software Developer"}/>
      <MyName name={"Javeria"} profession={"Doctor"}/>
      <MyName name={"M Ali"} profession={"Lover"}/>
      <MyName name={"Hanzala"} profession={"Gold Seller"}/> */}

      {/* {
        userData.map((user, index) => {
          return <MyName key={index} name={user.name} profession={user.profession} />
        })
      } */}

      {/* <Cards image={cardData[1].image} title={cardData[1].title} description={cardData[1].description}/> */}
      
      {/* {
        cardData.map((item, index) => {
          return <Cards key={index} image={item.image} title={item.title} description={item.description} />
        })
      } */}
      
      {/* <Bulb /> */}

      <Todo />

      <ApiFetch/>

      <Footer/>
    </>
  );
}

export default App;
