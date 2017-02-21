tina = User.create(first_name: "Tina", last_name: "Fey", email: "Tina@fey.com", password: "asdasd" )
tina.portfolios.create(name:"High Risk")
tina.portfolios.create(name:"Low Risk")
