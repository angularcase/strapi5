import type { Schema, Struct } from '@strapi/strapi';

export interface PricingPricing extends Struct.ComponentSchema {
  collectionName: 'components_pricing_pricings';
  info: {
    displayName: 'Pricing';
    icon: 'database';
  };
  attributes: {
    first: Schema.Attribute.String;
    second: Schema.Attribute.String;
  };
}

declare module '@strapi/strapi' {
  export module Public {
    export interface ComponentSchemas {
      'pricing.pricing': PricingPricing;
    }
  }
}
