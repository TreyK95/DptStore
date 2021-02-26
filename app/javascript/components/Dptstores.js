import React from "react"

export default (props) => {
    const {dpt_stores} = props
    const renderItems = () => {
      return dpt_stores.map(dpt_store => {
        return( 
          <div className='dpt_store-container'>
            <h1>{dpt_store.name}</h1>
            <a href={`/dpt_stores/${dpt_store.id}`}>show</a>
          </div>
        )
      })
    }
    return(
        <>
          <h1>Department Store</h1>
          <div className='dpt_stores-container'>
          {renderItems()}
          </div>
        </>
   )
}  
