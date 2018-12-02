# EthereumProject

# Data Description
Our data files (shared on elearning/Ethereum datasets) contain two primary groups: token network edge files, and token price files. The Ethereum project is a blockchain platform, and our data comes from there. Although Ethereum started in 2015, most tokens have been created since 2016. As such, tokens have different starting dates, and their data starts from that initial date. 

Token edge files have this row structure: fromNodeID\ttoNodeID\tunixTime\ttokenAmount\r\n 

This row implies that fromTokenID sold tokenAmount of the token to toNodeID at time unixTime. Two addresses can sell/buy tokens multiple times with multiple amounts. For this reason, the network is considered a weighted, directed multi(edge) graph. Each token has a maximum token count maxt; you can think of maxtmaxt as the total circulating token amount. Most tokens have maxt≤1018. 

Price files have no extensions, but they are text based. If you open them with a text editor (use notepad++ or similar), you will see this row structure: Date\tOpen\tHigh\tLow\tClose\tVolume\tMarketCap\r 

The price data is taken from https://coinmarketcap.com/. Open and close are the prices of the specific token at the given date. Volume and MarketCap give total bought/sold tokens and market valuation at the date.

# Goal:
Find the distribution of how many times a user 1 - buys, 2 - sells a token. Which discrete distribution type fits these distributions best? Estimate distribution parameters.

Create layers of transactions with increasing amounts? This descriptive statistic is similar to bin selection in histograms. For example, we could choose layer1 as those transactions that involve 0.01×maxt in amount. Find a good value for the number of layers. After which, compute a feature in each layer. An example feature is the number of transactions, another one is the number of unique buyers.

Find the most active buyers and sellers in your primary token network, and track them in other tokens. Fit a distribution for the number of unique tokens they invest in.

Extract at least three features from the token network at day t−1 and create a multiple linear regression model to explain price return on day t. 

The link to the project's html file can be found at 

http://www.utdallas.edu/~pxk170930/BNBReport.html
