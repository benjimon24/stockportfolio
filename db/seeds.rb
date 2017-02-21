User.delete_all
Portfolio.delete_all
Stock.delete_all

ben = User.create(
first_name: "Ben",
last_name: "Li",
email: "holla@you",
password: "asdfasdf"
)

rina = User.create(
first_name: "Rina",
last_name: "Rama",
email: "hi@you",
password: "asdfasdf"
)

sid = User.create(
first_name: "Sid",
last_name: "Aloha",
email: "aloha@you",
password: "asdfasdf"
)

port1 = ben.portfolios.create(name: "HOLLA HOLLA GET DOLLA")
port2 = ben.portfolios.create(name: "MONEYYY")
port3 = ben.portfolios.create(name: "yoyoyoyo")

stock1 = port1.stocks.create(
name: "Apple Inc.",
buy_price: 123.45,
volume: 10000,
symbol: "AAPL"
)

stock2 = port1.stocks.create(
name: "Google",
buy_price: 750.75,
volume: 2000,
symbol: "GOOG"
)

stock3 = port1.stocks.create(
name: "Chipotle Mexican Grill",
buy_price: 350.23,
volume: 1000,
symbol: "CMG"
)
>>>>>>> 361feaaa0a2cb44634d0ffafb35d85e0359c6b18
