import React from 'react'
import { Outlet,Link } from 'react-router'

const AppLayout = () => {
  return (
    <div>
      <nav>
        <ul>
            <li><Link to='/'>Home</Link></li>
            <li><Link to='/second'>Second</Link></li>
        </ul>
      </nav>
      <Outlet></Outlet>
    </div>
  )
}

export default AppLayout
