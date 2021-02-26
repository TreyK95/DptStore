import React from "react"

export default (props) => {
    const {dpt_store} = props
    const renderItems = () => {
        return( 
          <div className='dpt_store-container'>
            <h1>{dpt_store.name}</h1>
          </div>
        )
    }
    return(
        <>
          <h1>Department Store</h1>
          <div className='dpt_store-container'>
          {renderItems()}
          </div>
        </>
   )
}  