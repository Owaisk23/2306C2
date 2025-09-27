import React from 'react'

const Child1 = ({games, setgames}) => {

    let addGame = () => {
        let newgame = document.getElementById('newgame').value;
        setgames([...games, newgame]);
    }

  return (
    <>
        <input type="text" placeholder='Enter Game Name' id='newgame' />
        <button className='btn btn-primary' onClick={addGame}>Add Game</button>
    </>
  )
}

export default Child1
