
  
  const products = [
    { id: 1, name: "iPhone 15 Pro", price: 120000, photo: "https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=500" },
    { id: 2, name: "Samsung S23 Ultra", price: 95000, photo: "https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?w=500" },
    { id: 3, name: "AirPods Pro", price: 28000, photo: "https://images.unsplash.com/photo-1600294037681-c80b4cb5b434?w=500" },
    { id: 4, name: "Apple Watch S9", price: 45000, photo: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?w=500" }
  ];
 const allCards = products.map(item => `
      <div class="bg-white rounded-2xl shadow-md hover:shadow-xl transition-all duration-300 hover:-translate-y-2 overflow-hidden">
        <img src="${item.photo}" alt="${item.name}" class="w-full h-48 object-cover">
        <div class="p-4 text-center">
          <h3 class="font-bold text-lg">${item.name}</h3>
          <p class="text-sm text-gray-400">ID: ${item.id}</p>
          <p class="text-green-600 font-bold text-xl mt-2">৳ ${item.price.toLocaleString()}</p>
          <button class="mt-4 w-full bg-black text-white py-2 rounded-lg hover:bg-gray-800 transition">
            Add to Cart
          </button>
        </div>
      </div>
  `).join("");

  // 3. show korano
  container.innerHTML = allCards;
  