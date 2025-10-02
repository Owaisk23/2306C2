import { useContext, useState } from 'react'
import  { GlobalContext } from './context';


function App() {


  const {name} = useContext(GlobalContext);
  // const {state,dispatch} = useContext(GlobalContext);


// function changeName() {
// dispatch({type: "NAME_CHANGE", payload: "Haris"})

//   }

  // console.log(state)


  return (
    <>
    <p>{name}</p>
 {/* <button onClick={changeName}>Click</button> */}

 
    </>
  )
}

export default App
