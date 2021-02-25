import React from "react"

export default (props) => {
    const {dpt_stores} = props
    return (
      <>
         <h1>Dptstore Component Here</h1>
         {dpt_stores.length}
      </>
    );
}