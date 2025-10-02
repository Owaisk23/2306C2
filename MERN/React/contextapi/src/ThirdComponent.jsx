import { useContext, useState } from 'react'
import  { GlobalContext } from './context';

const ThirdComponent = () => {
      const {state,dispatch} = useContext(GlobalContext);
  return (
    <div>
       <p>{state.name}</p>
    </div>
  )
}

export default ThirdComponent