# Nested Arrays:
nested_array = [
  [1, 2, [3, 4, [5, 6], 7], 8],
  [9, [10, [11, 12], 13], 14],
  [15, 16, 17, [18, [19, 20]]]
]
puts nested_array[0][2][2][1]                                    # 6


# Nested Hash
nested_hash = { 
  users: {
    "user1" => { name: "John", age: 30, addresses: { home: "123 Main St", work: "456 Business Ave" } },
    "user2" => { name: "Alice", age: 25, addresses: { home: "789 Park Blvd" } }
  },
  products: {
    "product1" => { name: "Laptop", specs: { brand: "ABC", memory: "8GB" } },
    "product2" => { name: "Phone", specs: { brand: "XYZ", memory: "64GB" } }
  }
}
puts nested_hash[:users]["user1"][:addresses][:work]            # 456 Business Ave



# Mixed Nested Collections
mixed_nested = [
  {
    users: [
      { name: "John", hobbies: ["Reading", "Gaming"] },
      { name: "Alice", hobbies: ["Painting", "Traveling"], address: { city: "New York", zip: "10001" } }
    ]
  },
  [
    { fruits: ["apple", "banana"] },
    { vegetables: ["carrot", "spinach"], details: { color: "green", nutrition: { vitamins: ["A", "C"] } } }
  ]
]

puts mixed_nested[1][1][:details][:nutrition][:vitamins][0]     # A
puts mixed_nested[0][:users][1][:address][:city]                # New York