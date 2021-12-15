import {Store} from './store';

export const Asda: Store = {
  currency: '£',
  labels: {
    inStock: {
      container: 'button[data-id="button-addtobag-pdp"]',
      text: ['add to basket'],
    },
    maxPrice: {
      container: '.product__price-value',
    },
    outOfStock: [
        {
          container: '#availability',
          text: ['out of stock', 'unavailable'],
        },
        {
          container: '#backInStock',
          text: ['unavailable'],
        },
      ],
  },
  links: [
    {
      brand: 'test:brand',
      model: 'test:model',
      series: 'test:series',
      url: 'https://direct.asda.com/george/men/t-shirts/xbox-black-block-colour-t-shirt/GEM894266,default,pd.html?cgid=D2M1G10C1',
    },
    {
      brand: 'sony',
      model: 'ps5 console',
      series: 'sonyps5c',
      url: 'https://direct.asda.com/george/toys-character/gaming-clothing-home-toys/playstation5-console/051003646,default,pd.html',
    },
    /**{
      brand: 'microsoft',
      model: 'xbox series x',
      series: 'xboxsx',
      url: 'https://www.argos.co.uk/product/8448262',
    },*/
    {
      brand: 'microsoft',
      model: 'xbox series s',
      series: 'xboxss',
      url: 'https://www.argos.co.uk/product/8448248',
    },
  ],
  name: 'asda',
};
