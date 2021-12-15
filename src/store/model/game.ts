import {Store} from './store';

export const Game: Store = {
  currency: '£',
  labels: {
    inStock: {
      container: '.buyingOptions',
      text: ['Pre-order Now', 'Buy New'],
    },
    maxPrice: {
      container: '.buyingOptions .btnPrice',
      euroFormat: false,
    },
    outOfStock: {
      container: '.basket-warning > p',
      text: ['out of stock', 'Your add to basket request was not completed because we are currently out of stock.'],
    },
  },
  links: [
    {
      brand: 'test:brand',
      model: 'test:model',
      series: 'test:series',
      url: 'https://www.game.co.uk/en/ea-sports-fifa-21-500gb-ps4-bundle-2832947',
    },
    {
      brand: 'sony',
      model: 'ps5 console',
      series: 'sonyps5c',
      url: 'https://www.game.co.uk/en/playstation-5-console-2826338',
    },
    {
      brand: 'sony',
      model: 'ps5 digital',
      series: 'sonyps5de',
      url: 'https://www.game.co.uk/en/playstation-5-digital-edition-2826341',
    },
    // {
    //   brand: 'microsoft',
    //   model: 'xbox series x',
    //   series: 'xboxsx',
    //   url: 'https://www.game.co.uk/en/xbox-series-x-2831406',
    // },
    {
      brand: 'microsoft',
      model: 'xbox series x',
      series: 'xboxsx',
      url: 'https://www.game.co.uk/webapp/wcs/stores/servlet/OrderChangeServiceItemAdd?updateable=0&langId=44&catEntryId_1=2831407&quantity=1&contractId=&URL=AjaxMiniShoppingBagView&page=pdpPage&catalogId=10201&errorViewName=AjaxActionErrorResponse&calculationUsage=-1%2C-2%2C-3%2C-4%2C-5%2C-6%2C-7&storeId=10151&productId_1=2831407&partNumber=800821&mediaId=800821',
    },
    {
      brand: 'microsoft',
      model: 'xbox series s',
      series: 'xboxss',
      url: 'https://www.game.co.uk/en/xbox-series-x-2831406',
    },
  ],
  name: 'game',
};
