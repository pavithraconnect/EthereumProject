# EthereumProject

# Data Description
Our data files (shared on elearning/Ethereum datasets) contain two primary groups: token network edge files, and token price files. The Ethereum project is a blockchain platform, and our data comes from there. Although Ethereum started in 2015, most tokens have been created since 2016. As such, tokens have different starting dates, and their data starts from that initial date. 

Token edge files have this row structure: fromNodeID\ttoNodeID\tunixTime\ttokenAmount\r\n 

This row implies that fromTokenID sold tokenAmount of the token to toNodeID at time unixTime. Two addresses can sell/buy tokens multiple times with multiple amounts. For this reason, the network is considered a weighted, directed multi(edge) graph. Each token has a maximum token count maxt; you can think of maxtmaxt as the total circulating token amount. Most tokens have maxt≤1018. 

Price files have no extensions, but they are text based. If you open them with a text editor (use notepad++ or similar), you will see this row structure: Date\tOpen\tHigh\tLow\tClose\tVolume\tMarketCap\r 

The price data is taken from https://coinmarketcap.com/. Open and close are the prices of the specific token at the given date. Volume and MarketCap give total bought/sold tokens and market valuation at the date.

# Goal:
Find the distribution of how many times a user 1 - buys, 2 - sells a token. Which discrete distribution type fits these distributions best? Estimate distribution parameters. 
