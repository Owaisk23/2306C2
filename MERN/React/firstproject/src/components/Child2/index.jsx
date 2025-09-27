import React from 'react'

const Child2 = ({games}) => {
  return (
    <>
     {
        games.map((game, index) => {
            return <h2 key={index}>{game}</h2>
        })
     }
    </>
  )
}

export default Child2
