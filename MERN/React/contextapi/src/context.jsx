import React, { createContext, useReducer } from 'react'
import { reducer } from './reducer';

export const GlobalContext = createContext();

    const userData = {
        name: "Owais Ahmed",
        email: "owaiskhan@gmail.com",
        age: 22
    }


//     export default function ContextProvider({ children }) {
//         const [state, dispatch] = useReducer(reducer, userData);
//     return (
//         <GlobalContext.Provider value={{state, dispatch}}>
//             {children}
//         </GlobalContext.Provider>
//     )
// }

export default function ContextProvider({ children }) {
    return (
        <GlobalContext.Provider value={userData}>
            {children}
        </GlobalContext.Provider>
    )
}


