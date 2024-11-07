此文件夹内的文件为保存商人出售的商品信息
如果不保存商品信息，那么服务端将在开启5分钟后才开始加载脚本内的商品
如果保存商品信息，会在LoadMap() -> InitializeMerchants() -> LoadMarketSavedGoods()时进行加载