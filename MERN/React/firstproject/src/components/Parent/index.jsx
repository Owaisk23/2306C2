import React from 'react'
import { useState } from 'react'
import Child1 from '../Child1';
import Child2 from '../Child2';

const Parent = () => {
    let [games, setGames] = useState(["PubG", "Free Fire", "Call of Duty", "Mini Militia"]);
  return (
    <>
     <Child1 games={games} setgames={setGames} />
     <Child2 games={games}/> 
    </>
  )
}

export default Parent
