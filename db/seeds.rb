categories = []
categories << Category.create(name: 'Kitchen')
categories << Category.create(name: 'Bathroom')
categories << Category.create(name: 'Office')
categories << Category.create(name: 'Clothing')
categories << Category.create(name: 'Cleaning')

products = []
products << Product.create(name: 'dishwasher', price: 500.00, description: "blah")
products << Product.create(name: 'shirt', price: 40.00, description: "blah")
products << Product.create(name: 'dishes', price: 25.00, description: "blah")
products << Product.create(name: 'soap', price: 0.50, description: "blah")
products << Product.create(name: 'sponge', price: 1.20, description: "blah")
products << Product.create(name: 'towel', price: 15.00, description: "blah")


categories[0].products << products[-1]
categories[0].products << products[-2]
categories[0].products << products[-3]
categories[0].products << products[-4]

categories[1].products << products[0]
categories[1].products << products[1]
categories[1].products << products[2]
categories[1].products << products[3]

categories[2].products << products[3]
categories[2].products << products[4]

categories[3].products << products[4]
categories[3].products << products[3]
categories[3].products << products[5]
categories[3].products << products[2]

categories[4].products << products[-1]
categories[4].products << products[-2]

