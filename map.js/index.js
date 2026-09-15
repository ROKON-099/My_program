
  // 1. const diye 4 ta item er array create korlam
  const products = [
    {
      id: 1,
      name: "iPhone 15",
      price: 120000,
      photo: "https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=500"
    },
    {
      id: 2,
      name: "Samsung S23",
      price: 95000,
      photo: "https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?w=500"
    },
    {
      id: 3,
      name: "AirPods Pro",
      price: 28000,
      photo: "https://images.unsplash.com/photo-1600294037681-c80b4cb5b434?w=500"
    },
    {
      id: 4,
      name: "Apple Watch",
      price: 45000,
      photo: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?w=500"
    }
  ];
 const container = document.getElementById("product-container");

  const allCards = products.map(product => {
    return `
      <div class="card">
        <img src="${product.photo}" alt="${product.name}">
        <h3>${product.name}</h3>
        <p>ID: ${product.id}</p>
        <p class="price">৳ ${product.price}</p>
      </div>
    `;
  }).join(""); 

  
  container.innerHTML = allCards;