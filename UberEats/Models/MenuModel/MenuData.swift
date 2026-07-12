//
//  MenuData.swift
//  UberEats
//
//  Created by Alexis Horteales Espinosa on 11/07/26.
//

import Foundation

let featuredData: [MenuResponse] = [
    MenuResponse(
        id: UUID(),
        name: "Truffle Mushroom Pizza",
        imageUrl:
            "https://tb-static.uber.com/prod/image-proc/processed_images/a3164987cc0b88eb1c182c715e0db6a2/58f691da9eaef86b0b51f9b2c483fe63.jpeg",
        description: "A luxurious blend of truffle oil, mushrooms, and ricotta cheese.",
        price: "$17.99",
        isPriceAddOns: 0,
        rate: 96, // 96%
        totalRate: 450,
        isPopular: 1
    ),
    MenuResponse(
        id: UUID(),
        name: "Prosciutto Arugula Pizza",
        imageUrl:
            "https://tb-static.uber.com/prod/image-proc/processed_images/c6d3ef98ed8826c88b250a68b3048221/58f691da9eaef86b0b51f9b2c483fe63.jpeg",
        description: "Thin slices of prosciutto topped with fresh arugula and shaved parmesan.",
        price: "$18.49",
        isPriceAddOns: 0,
        rate: 94, // 94%
        totalRate: 400,
        isPopular: 1
    ),
    MenuResponse(
        id: UUID(),
        name: "Buffalo Chicken Calzone",
        imageUrl:
            "https://tb-static.uber.com/prod/image-proc/processed_images/3e443a2806f87b8f6888bf5f845cd828/58f691da9eaef86b0b51f9b2c483fe63.jpeg",
        description: "Buffalo chicken, mozzarella, and ranch dressing wrapped in pizza dough.",
        price: "$14.99",
        isPriceAddOns: 0,
        rate: 92,
        totalRate: 380,
        isPopular: 1
    ),
]

let pizzaMenuData: [MenuResponse] = [
    MenuResponse(
        id: UUID(),
        name: "Pepperoni Classic Pizza",
        imageUrl:
            "https://images.unsplash.com/photo-1628840042765-356cda07504e?w=800&q=80",
        description: "Classic pepperoni with mozzarella and our signature tomato sauce.",
        price: "$15.99",
        isPriceAddOns: 0,
        rate: 95, // 95%
        totalRate: 520,
        isPopular: 1
    ),
    MenuResponse(
        id: UUID(),
        name: "Margherita Pizza",
        imageUrl:
            "https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=800&q=80",
        description: "Fresh basil, mozzarella di bufala, and San Marzano tomatoes.",
        price: "$13.99",
        isPriceAddOns: 0,
        rate: 93, // 93%
        totalRate: 410,
        isPopular: 1
    ),
    MenuResponse(
        id: UUID(),
        name: "BBQ Chicken Pizza",
        imageUrl:
            "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=800&q=80",
        description: "Grilled chicken, red onions, and smoky BBQ sauce with cilantro.",
        price: "$16.49",
        isPriceAddOns: 0,
        rate: 91, // 91%
        totalRate: 350,
        isPopular: 0
    ),
]

let drinkMenuData: [MenuResponse] = [
    MenuResponse(
        id: UUID(),
        name: "Coca-Cola",
        imageUrl:
            "https://images.unsplash.com/photo-1554866585-cd94860890b7?w=800&q=80",
        description: "Ice-cold classic Coca-Cola served in a chilled bottle.",
        price: "$2.99",
        isPriceAddOns: 0,
        rate: 97, // 97%
        totalRate: 610,
        isPopular: 1
    ),
    MenuResponse(
        id: UUID(),
        name: "Fresh Lemonade",
        imageUrl:
            "https://images.unsplash.com/photo-1523677011781-c91d1bbe2f9e?w=800&q=80",
        description: "Freshly squeezed lemons with a hint of mint, served over ice.",
        price: "$3.49",
        isPriceAddOns: 0,
        rate: 94, // 94%
        totalRate: 280,
        isPopular: 1
    ),
    MenuResponse(
        id: UUID(),
        name: "Iced Coffee",
        imageUrl:
            "https://images.unsplash.com/photo-1517701550927-30cf4ba1dba5?w=800&q=80",
        description: "Cold brew coffee served over ice with your choice of milk.",
        price: "$4.29",
        isPriceAddOns: 1,
        rate: 90, // 90%
        totalRate: 220,
        isPopular: 0
    ),
]

let extrasAndSuppliesData: [MenuResponse] = [
    MenuResponse(
        id: UUID(),
        name: "Garlic Bread Sticks",
        imageUrl:
            "https://images.unsplash.com/photo-1573140247632-f8fd74997d5c?w=800&q=80",
        description: "Warm breadsticks brushed with garlic butter and parmesan.",
        price: "$5.99",
        isPriceAddOns: 0,
        rate: 92, // 92%
        totalRate: 340,
        isPopular: 1
    ),
    MenuResponse(
        id: UUID(),
        name: "Ranch Dipping Sauce",
        imageUrl:
            "https://images.unsplash.com/photo-1585325701956-60dd9c8553bc?w=800&q=80",
        description: "Creamy house-made ranch, perfect for pizza crusts and sides.",
        price: "$0.99",
        isPriceAddOns: 1,
        rate: 89, // 89%
        totalRate: 190,
        isPopular: 0
    ),
    MenuResponse(
        id: UUID(),
        name: "Party Pack Utensils",
        imageUrl:
            "https://images.unsplash.com/photo-1610701596007-11502861dcfa?w=800&q=80",
        description: "Plates, napkins, and utensils for up to 8 people.",
        price: "$3.99",
        isPriceAddOns: 0,
        rate: 87, // 87%
        totalRate: 120,
        isPopular: 0
    ),
]
