const products =[
    { id:1, name:"laptop"},
    {id:2, name:"phone"},
    {id:3, name:"powerbank"}


]
function productlist () {
    return (


        <div>
            {
                product.map(product => 
                (
                    <div key={product.id}>
                        <h3></h3>
                )
                )
            }
        </div>
    )
}