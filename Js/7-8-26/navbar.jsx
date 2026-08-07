import {Navlink, Link } from "react-router-dom";

const Navbar = () => 
{

    const Navlink =
    [
       {name: 'home',  path: '/' },
       { name: 'About', path: '/about'},
       { name: 'Contact', path: '/contact'},
       { name: 'services', path: '/services'},

    ]





    
    return (
        <nav className="bg-white sticky top-0 z-50">
            <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div className="flex items-center justify-between h-16">
                
                 {/*______________Logo_____________*/}

                 <Link to="/" className="flex-shrink-0">

                 <h3 className="text-1xl font-semibold">
                    G3 Architect
                 </h3>
                 </Link>


                     {/** Navlink for Home__aboutus____contact___services__ */}

                     <div className= "hidden md:block">

                {Navlink.map((link) => (
                    <navlink 
                    key={link.name}
                    to={link.path}
                    className= {({isActive}) => isActive ? 'text-blue-500' : 'text-gray-500'}
                )})

                     </div>


  {Navlink.map((link) => (
<Navlink 
key={link.name}
to={link.path}
className= {({isActive}) => isActive ? 'text-blue-700' : 'text-gray-600'}


  ))}





                </div>

                </div>




        </nav>
    
    )
}